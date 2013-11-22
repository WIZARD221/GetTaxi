class Metric < ActiveRecord::Base
	belongs_to :driver
	
	validates :name,  presence: true
	validates :value, presence: true
 	validates :type, presence: true
 	validates :latitude, presence: true
 	validates :longitude, presence: true
 	validates :time_stamp, presence: true


	attr_accessor :name, :value, :type, :latitude, :longitude, :time_stamp
end