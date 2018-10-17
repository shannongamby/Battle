class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
  end

  def decrease_hp
    @hp -= 10
  end

end
