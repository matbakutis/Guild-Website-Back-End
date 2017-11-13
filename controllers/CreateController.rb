class CreateController < ApplicationController

	get '/' do
		
	end

	post '/' do
		@guild = Guild.new
		@guild.name = params[:name],
		@guild.realm = params[:realm],
		@guild.region = params[:region],
		@guild.about = params[:about]
		@guild.save
		@guild.id
	end

end