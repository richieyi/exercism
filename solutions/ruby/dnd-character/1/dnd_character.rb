class DndCharacter
  INITIAL_HP = 10
  attr_reader :strength, :dexterity, :intelligence, :wisdom, :charisma, :constitution, :hitpoints
  
  def self.modifier(score)
    ((score - 10) / 2).floor
  end

  def initialize
    @strength = roll
    @dexterity = roll
    @intelligence = roll
    @wisdom = roll
    @charisma = roll
    @constitution = roll
    @hitpoints = INITIAL_HP + DndCharacter.modifier(@constitution)
  end

  private

  def roll
    rolls = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)].sort
    rolls[1] + rolls[2] + rolls[3]
  end
end
