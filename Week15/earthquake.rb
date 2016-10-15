# Earthquake Controller


require 'mysql2'
require 'sinatra'

require_relative "models/data.rb"






get '/hi' do
  "Hello World!"
end

get '/' do
	@data = Earthquake.get_data
	erb :data
end