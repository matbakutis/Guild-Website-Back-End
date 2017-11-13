class CreateController < ApplicationController

	get '/' do
		'HELLO'
	end

	post '/' do
		payload = params 
		payload = JSON.parse(request.body.read).symbolize_keys
		@guild = Guild.new
		@guild.name = payload[:name]
		@guild.realm = payload[:realm]
		@guild.region = payload[:region]
		@guild.about = payload[:about]
		@guild.save
		@guild.id.to_s
	end

end