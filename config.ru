require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/CreateController'

require './models/GuildModel'
require './models/MythicModel'
require './models/HeroicModel'
require './models/RBGModel'

map('/create') {run CreateController}

