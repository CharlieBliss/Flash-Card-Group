require_relative 'text_parser'
require_relative 'card'
require_relative 'deck'
require_relative 'controller'

parser = CsvParser.new('deck.csv')

deck = Deck.new(parser.deck)

controller = Controller.new({parser: CsvParser.new('deck.csv')})

controller.start_game
