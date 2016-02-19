module View

  def self.game_start
    p "Welcome to flashcards!"
  end

  def self.display_card_definition(card)
    puts card.definition
  end

  def self.ask_for_word
    puts "What's your answer?"
    gets.chomp
  end

  def self.correct
    puts "Right!"
  end

  def self.fail
    puts "Wrong! Try again!"
  end

  def self.next_def
    puts "Now try this."
  end

  def self.game_over
    puts "Game over!"
  end

  def self.print_counter(counter)
    if counter < 3
      puts "Thats try number #{counter}"
    else
      puts "Better luck next time! I'll put that one back in for you."
    end
  end

end
