class Metric < ActiveRecord::Base
	belongs_to :driver
	
	validates :name,  presence: true
	validates :value, presence: true
 	validates :metric_type, presence: true
 	validates :latitude, presence: true
 	validates :longitude, presence: true
 	validates :time_stamp, presence: true

end