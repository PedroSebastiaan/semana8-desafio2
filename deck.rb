require_relative 'card.rb'

class Deck
    attr_accessor :cards

    def initialize
        generator(cards)
    end

    def generator (cards)
        kinds = %w[C D E T]
        numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        new_deck = []
        
        def deck_maker (array1, array2, array3)
            array1.each do |i|
                array2.each do |j|
                    array3 << [i,j]
                end
            end
        end
        deck_maker(kinds, numbers, new_deck)
        @cards = new_deck
    end

    def shuffle
        @cards = @cards.shuffle
    end

    def draw
        @cards.shuffle.pop
    end

    def dist
    hand = []
    5.times do |i|
        hand << draw
    end
    hand
    end
end

my_deck = Deck.new
pp my_deck.dist













