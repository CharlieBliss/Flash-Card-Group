require_relative 'card'
require_relative 'text_parser'

class Deck
  attr_accessor :cards, :used_cards

  def initialize(cards)
    @cards = cards
    @used_cards = []
  end

  def pick_a_card
    picked_card = @cards.sample
    @used_cards << picked_card
    @cards.delete(picked_card)
    picked_card
    end

   def empty?
    @cards.empty?
  end

  def return_card_to_deck(card)
    @cards << card
  end

  def clear
    @cards = []
  end

end
