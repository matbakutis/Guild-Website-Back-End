class CreateController < ApplicationController

	get '/' do
		'HELLO'
	end

	post '/guild' do
		payload = params 
		payload = JSON.parse(request.body.read).symbolize_keys
		@guild = Guild.new
		@guild.name = payload[:name]
		@guild.realm = payload[:realm]
		@guild.region = payload[:region]
		@guild.about = payload[:about]
		@guild.save
		some_hash = {}
		some_hash[:id] = @guild.id.to_i
		some_hash.to_json
	end

	post '/team' do
		payload = params 
		payload = JSON.parse(request.body.read).symbolize_keys
		@guild = Guild.find_by(id: payload[:guildId])
		@guild.lf_mythic = payload[:lfMythic]
		@guild.lf_heroic = payload[:lfHeroic]
		@guild.lf_rbg = payload[:lfRbg]
		@guild.about_mythic = payload[:aboutMythic]
		@guild.about_heroic = payload[:aboutHeroic]
		@guild.about_rbg = payload[:aboutRbg]
		@guild.save
		some_hash = {}
		some_hash[:id] = @guild.id.to_i
		some_hash.to_json
	end

	post '/players' do
		payload = params 
		payload = JSON.parse(request.body.read).symbolize_keys

		@player = 
		
		@player.save
		some_hash = {}
		some_hash[:id] = @.id.to_i
		some_hash.to_json
	end

end

player_name
img_link
role
guild_id 








