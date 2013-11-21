require_relative '../spec_helper'

describe Metric do
 
 
  before { @metric = Metric.new(name: "network.reception_strength", value: "24", type: "g", latitude:32.1075039, longitude:34.8358982, time_stamp:1352289160 ) }

  subject { @metric }

  it { should respond_to(:name) }
  it { should respond_to(:type) }
  it { should respond_to(:value) }
  it { should respond_to(:latitude) }
  it { should respond_to(:longitude) }
  it { should respond_to(:time_stamp) }
  
  it { should be_valid }

  describe "#name" do
    it.name.should eql "network.reception_strength"
  end


  describe "when name is not present" do
    before { @metric.name = " " }
    it { should_not be_valid }
  end

end