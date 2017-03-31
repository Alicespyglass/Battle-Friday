class Player

  DEFAULT_HP = 120
  DEFAULT_DAMAGE = 12
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def reduce_hp
    self.hp -= DEFAULT_DAMAGE
  end

  def dead?
    hp == 0
  end

private

attr_writer :hp

end
