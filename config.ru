require 'sinatra/base'

require './controllers/ApplicationController'

require './models/'

map('/') {run ApplicationController}

