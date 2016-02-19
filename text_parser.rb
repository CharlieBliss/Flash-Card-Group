require 'csv'

class CsvParser

  attr_reader :file

  def initialize(file)
    @file = file
  end

  def deck
    @deck ? @deck : @deck = load
  end

  private

  def load
    deck = []
    CSV.foreach(@file, headers: true, :header_converters => :symbol) do |row|
      deck << Card.new(row)
    end
    deck
  end

end
