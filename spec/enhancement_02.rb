require_relative 'spec_helper'

describe Unit do

  before :each do
    @blueclan = Footman.new
    @redclan = Footman.new
  end

  describe "#dead?" do
    it "should check to see if unit (blueclan) health is 0" do
      @redclan.attack!(@blueclan)
      @redclan.attack!(@blueclan)
      @redclan.attack!(@blueclan)
      @redclan.attack!(@blueclan)
      @redclan.attack!(@blueclan)
      @redclan.attack!(@blueclan)
      @blueclan.attack!(@redclan)
      expect(@blueclan.attack!(@redclan)).to be(false)
    end
  end
end