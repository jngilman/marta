class Location < ActiveRecord::Base
	geocoded_by :my_location
	after_validation :geocode

	def self.nearby(lng1, lat1, lng2, lat2)

		if (lng1-lng2).abs <= 0.005 && (lat1-lat2).abs <= 0.005
			return true 
		else
			return false
		end 
	end


	def my_location
		"#{address}, #{city}, GA"
	end


end
