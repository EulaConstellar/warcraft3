require_relative 'spec_helper'
  
describe SiegeEngine do

  before :each do
    @siege = SiegeEngine.new
    @siege2 = SiegeEngine.new
    @footman = Footman.new
    @peasant = Peasant.new
    @barrack = Barracks.new
  end

  describe "#attack!" do
    it "should not attack a footman" do
      @siege.attack!(@footman)
      expect(@siege.attack!(@footman)).to be(false)
    end
  end

  describe "#attack!" do
    it "should not attack a peasant" do
      @siege.attack!(@peasant)
      expect(@siege.attack!(@peasant)).to be(false)
    end
  end

  describe "#attack!" do
    it "should attack the barrack with 2x (or 100AP) the damage" do
      @barrack.should_receive(:damage).with(100)
      @siege.attack!(@barrack)
    end
  end

  describe "#attack!" do
    it "should attack the other Siege Engine with normal AP (50)" do
      @siege2.should_receive(:damage).with(50)
      @siege.attack!(@siege2)
    end
  end
end
