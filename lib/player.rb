class Player
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def take_damage
    @hitpoints -= 10
  end

  def attack(player)
    player.take_damage
  end
end