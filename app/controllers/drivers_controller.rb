class DriversController < ApplicationController
  def new
  end
  
  def index
    
    @drivers = Driver.includes(:metrics).limit(10)
    # @drivers = Driver.find(:all, :limit => 10, :include => :metrics)
  end
end
