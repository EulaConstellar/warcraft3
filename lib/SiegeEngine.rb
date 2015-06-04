require_relative 'unit'

class SiegeEngine < Unit
  attr_reader :attack_power, :health_points

  def initialize
    @attack_power = 50
    @health_points = 400
  end

  def damage(attack_power)
    @health_points = (@health_points - attack_power)
  end
end