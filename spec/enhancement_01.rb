require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

  describe "#damage" do
    it "should only do half of its AP as damage to barracks" do
      @barracks.damage(5)
      @footman.attack!(@barracks)
      expect(@barracks.barrack_health).to eq(490) #HP started at 500 and was hit by 10 AP but only takes half
    end
  end

  describe "#attack!" do
    it "should deal the appropriate amount of attack power towards the Barrack" do
      @barracks.should_receive(:damage).with(5)
      @footman.attack!(@barracks)
    end
  end
end