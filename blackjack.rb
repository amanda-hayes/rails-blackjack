class Player
    attr_accessor :name, :bankroll, :hand

    def initialize name, bankroll, hand
        @name = name
        @bankroll = 100
        @hand = []
    end

end

player = Player.new "Player", 100, []

p player

class House
    attr_accessor :name, :bankroll, :hand
    
    def initialize name, bankroll, hand
        @name = name
        @bankroll = 100
        @hand = []
    end
end

house = House.new "House", 10000, []

p house


class Cards
    attr_reader :value

    def initialize value
        @value = value
    end
end

deck = []

hand = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]

# Make four full sets of cards to equal 52

4.times do
    hand.each do |hand|
     cards = Cards.new hand
        deck << hand
    end
end

# p deck

p "Enter Your Name"
player.name = gets.chomp

p "Good luck, #{player.name}!"

p "Dealing..."

# The player will be dealt a new card
# The new card will leave the deck

def deal (player)
    @deck.shuffle
    new_card = Card.new value
    player.hand << new_card
    @deck.shift
end 

def deal (house)
    @deck.shuffle
    new_card = Card.new value
    house.hand << new_card
    @deck.shift
end 


deck = Deck.new
# shuffled_deck = @deck.shuffle

deck.deal(player)

p player.hand[0].to_i + player.hand[1].to_i


deck.deal(house)

p house.hand[0].to_i + house.hand[1].to_i

# def SumCards
#     Put the sum of both player's hands
#     Put the sum of both House's hands
# end

def winLogic
    if player.sum > house.sum
        p "You win this round!"
        # add 10 to their bankroll
    elsif player.sum < house.sum
        p "House wins this round!"
        # add 10 to house bankroll
    else player.sum == house.sum
        p "It's a tie! Time for a dance off!"
    end
end



