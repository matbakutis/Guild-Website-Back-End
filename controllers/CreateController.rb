class CreateController < ApplicationController

	# Should not be accessed by anything, just to test
	get '/' do
		'HELLO'
	end

	# Saves guild info
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

	# Saves the team info but not the players
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

	# Saves all the players per team in the guild
	post '/players' do
		payload = params 
		payload = JSON.parse(request.body.read).symbolize_keys

		# Loops through each player and fits them into each teams table
		payload[:team].each_with_index	{ |value, index| 
			if value == 'Mythic'
				@player = Mythic.new
				@player.player_name = payload[:name][index]
				p payload[:img][index]
				@player.img_link = payload[:img][index]
				@player.role = payload[:role][index]
				@player.guild_id = payload[:guildId]
				@player.save
			elsif value == 'Heroic'
				@player = Heroic.new
				@player.player_name = payload[:name][index]
				@player.img_link = payload[:img][index]
				@player.role = payload[:role][index]
				@player.guild_id = payload[:guildId]
				@player.save
			elsif value == 'RBG'
				@player = RBG.new
				@player.player_name = payload[:name][index]
				@player.img_link = payload[:img][index]
				@player.role = payload[:role][index]
				@player.guild_id = payload[:guildId]
				@player.save
			end
		 } 

		some_hash = {}
		some_hash[:id] = 'saved'
		some_hash.to_json
	end

end








