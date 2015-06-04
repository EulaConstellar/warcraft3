require_relative 'barracks.rb'

class Unit
  attr_reader :health_points

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    if self.dead?
      false

    elsif enemy.dead?
      false

    elsif self.is_a? SiegeEngine
      if enemy.is_a? Footman
        false
      
      elsif enemy.is_a? Peasant
        false

      elsif enemy.is_a? Barracks
        enemy.damage(@attack_power * 2)
      
      elsif enemy.is_a? SiegeEngine
        enemy.damage(@attack_power)
      end

    elsif enemy.is_a? Barracks
      enemy.damage(@attack_power/2)
    
    else
      enemy.damage(@attack_power)
    end
  end

  def dead?
    @health_points == 0
  end

  def damage(attack_power)
    @health_points = (@health_points - attack_power)
  end

  def health_points
    @health_points
  end

  def attack_power
    @attack_power
  end
end