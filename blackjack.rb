class Card
  attr_accessor :suit, :face_value

  def initialize(s, v)
    @suit = s
    @face_value = v
  end

  def to_s
    "The #{face_value} of #{find_suit}"
  end

  def find_suit
    case suit
      when "H" then "Hearts"
      when "D" then "Diamonds"
      when "S" then "Spades"
      when "C" then "Clubs"
    end
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    # @cards = @cards * num_decks
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end 
end

module Hand
  def show_hand
    puts "---- #{name}'s Hand ----"
    cards.each do |card|
      puts "=> #{card.to_s}"
    end
    puts "=> Total: #{total}"
  end

  def total
    "some total"
  end

  def add_card(new_card)
    cards << new_card
  end
end

class Player
  include Hand

  attr_accessor :name, :cards

  def initialize(n)
    @name = n
    @cards = []
  end
end

class Dealer
  include Hand

  attr_accessor :name, :cards
  
  def initialize
    @name = "Dealer"
    @cards = []
  end
end

class Blackjack
  attr_accessor :player, :dealer, :deck

  def initialize
    @player = Player.new("David")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run
    deal_cards
    show_flow
    player_turn
    dealer_turn
    who_won?
  end
end

deck = Deck.new

player = Player.new("David")
player.add_card(deck.deal_one)
player.add_card(deck.deal_one)
player.show_hand
player.total

dealer = Dealer.new
dealer.add_card(deck.deal_one)
dealer.add_card(deck.deal_one)
dealer.show_hand
dealer.total







 
