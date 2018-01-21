class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require
	require './config/enviroments'
	register Sinatra::CrossOrigin
	# ActiveRecord::Base.establish_connection(
	# 	:adapter => 'postgresql',
	# 	:database => 'guildy'
	# )

	use Rack::MethodOverride
	set :method_override, true
	set :allow_methods, [:get, :post, :options]

	# Allows methods and fixes header problem
	before do
		headers['Access-Control-Allow-Origin'] = '*'
		response.headers["Access-Control-Allow-Methods"] = "HEAD,GET,POST,PUT,PATCH,DELETE,OPTIONS"
	end

end
