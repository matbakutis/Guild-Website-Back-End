class ViewController < ApplicationController

	get '/' do
		'HELLO'
	end

	get '/guilds' do
		@guilds = Guild.all
		final_array = []
		@guilds.map { |e| final_array.push({:id => e.id, :name => e.name}) }
		some_hash = {}
		some_hash[:array] = final_array
		some_hash.to_json
	end

	get '/guild/:id' do
		@guild = Guild.find_by(id: params[:id])
		some_hash = {}
		some_hash[:lfMythic] = @guild.lf_mythic
		some_hash[:lfHeroic] = @guild.lf_heroic
		some_hash[:lfRBG] = @guild.lf_rbg
		some_hash[:aboutMythic] = @guild.about_mythic
		some_hash[:aboutHeroic] = @guild.about_heroic
		some_hash[:aboutRBG] = @guild.about_rbg
		some_hash.to_json
	end

	get '/players/:id' do
		@guild = Guild.find_by(id: params[:id])
		@mythic = Mythic.where(guild_id: params[:id])
		@heroic = Heroic.where(guild_id: params[:id])
		@rbg = RBG.where(guild_id: params[:id])
		some_hash = {}
		some_hash[:aboutMythic] = @guild.about_mythic
		some_hash[:aboutHeroic] = @guild.about_heroic
		some_hash[:aboutRBG] = @guild.about_rbg
		some_hash[:mythicPlayers] = @mythic
		some_hash[:heroicPlayers] = @heroic
		some_hash[:rbgPlayers] = @rbg
		some_hash.to_json
	end

end








