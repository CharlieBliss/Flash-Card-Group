require_relative 'deck'
require_relative 'view'
require_relative 'text_parser'

class Controller


  def initialize(args={})
    @parser = args.fetch(:parser, CsvParser.new('deck.csv'))
    @deck = args.fetch(:deck,Deck.new(@parser.deck))
    @view = args.fetch(:view, View)
end

  def start_game

    @view.game_start

    until @deck.empty? do

      picked = @deck.pick_a_card
      guess = ''
      counter = 0

      until picked.correct?(guess) || counter >= 3 do
        @view.display_card_definition(picked)
        guess = @view.ask_for_word
        break if guess == 'skip'
        if guess.downcase == 'exit'
          @deck.clear
          break
        end

        picked.correct?(guess) ? @view.correct : @view.fail
        counter += 1
        @view.print_counter(counter) unless picked.correct?(guess)
        @deck.return_card_to_deck(picked) if counter == 3

      end
      @deck.empty? ? @view.game_over : @view.next_def
    end
  end
end
