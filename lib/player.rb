class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
    @dead = false
  end

  def decrease_hp
    @hp -= 10
    if @hp == 0
      @dead = true
    end
  end

  def dead?
    @dead
  end
end
