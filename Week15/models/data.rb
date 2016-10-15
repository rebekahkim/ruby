# get data

require 'net/http'
require 'json'



class Earthquake
	def self.get_data
		# Earthquake data from past week over magnitude 4.5
		uri = URI('http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_month.geojson')
		content = Net::HTTP.get(uri)

		hash = JSON.parse(content)					

		# create array of hashes containg latitude, longitude, and magnitude
		all_earthquakes = []

	
		hash['features'].each{|feature|
			all_earthquakes << {
				'magnitude' => feature['properties']['mag'],
				'longitude' => feature['geometry']['coordinates'][0],
				'latitude' => feature['geometry']['coordinates'][1]
			}
		}

		# hash['features']
		# hash['features'][1]['geometry']['coordinates'][1]

		return all_earthquakes

	end

	def all_earthquakes
		all_earthquakes
	end

end