module Blackjack
  VALUE_TABLE = {
    ace: 11,
    king: 10,
    queen: 10,
    jack: 10,
    ten: 10,
    nine: 9,
    eight: 8,
    seven: 7,
    six: 6,
    five: 5,
    four: 4,
    three: 3,
    two: 2,
    one: 1,
    joker: 0
  }.freeze
    
  def self.parse_card(card)
    VALUE_TABLE[card.to_sym]
  end

  def self.card_range(card1, card2)
    total_value = parse_card(card1) + parse_card(card2)

    case total_value
      when 4..11 then "low"
      when 12..16 then "mid"
      when 17..20 then "high"
      when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    my_total_value = parse_card(card1) + parse_card(card2)
    dealer_card_value = parse_card(dealer_card)
    
    if [card1, card2].all? { |card| card == "ace" }
      return "P"
    elsif my_total_value == 21
      return (dealer_card_value == 11 || dealer_card_value == 10) ? "S" : "W"
    elsif (17..20).include?(my_total_value)
      return "S"
    elsif (12..16).include?(my_total_value)
      return dealer_card_value >= 7 ? "H" : "S"
    elsif my_total_value <= 11
      return "H"
    end      
  end
end
