class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  register Sinatra::CrossOrigin

  ActiveRecord::Base.establish_connection(
      :adapter => 'postgresql',
      :database => 'guildy'
    )

  use Rack::MethodOverride
  set :method_override, true

end
