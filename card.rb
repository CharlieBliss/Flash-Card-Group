class Card

  attr_reader :word, :definition

  def initialize(args={})
    @word = args.fetch(:word, 'A')
    @definition = args.fetch(:definition, 'B')
  end

  def correct?(input)
    input.downcase == @word.downcase
  end

end
