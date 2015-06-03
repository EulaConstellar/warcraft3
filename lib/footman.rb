# http://classic.battle.net/war3/human/units/footman.shtml
require_relative "unit"

class Footman < Unit
  attr_accessor :attack_power, :health_points

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @attack_power = 10
    @health_points = 60
  end
end
