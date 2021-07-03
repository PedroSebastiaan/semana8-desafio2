require_relative 'card.rb'


class Deck
    attr_accessor :cards
    def initialize (cards)
        @cards = cards
    end
end

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

deck_maker(kinds, numbers, new_deck

def shuffle (array)
    array = array.shuffle
end

my_deck = Deck.new(new_deck)

my_deck.cards.shuffle

def draw (array)
    array.pop
end

def dist (array)
    hand = []
    5.times do |i|
        hand << draw(array)
    end
    pp hand
end

dist(my_deck.cards.shuffle)








