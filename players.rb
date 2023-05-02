class Player
  def initialize(name)
    @name = name
    @lives = 3
  end
  attr_accessor :name, :lives

  def lose_life
    @lives -= 1
  end

  def dead?
    lives = 0
  end
end

