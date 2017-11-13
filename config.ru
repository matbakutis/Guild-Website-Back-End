require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/ViewerController'
require './controllers/DevController'

require './models/GuildModel'

map('/') {run ApplicationController}
map('/') {run ViewerController}
map('/create') {run DevController}

