require 'sinatra'
require 'sinatra/reloader' if development?
require 'erb'
set :port, 3027
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do

  erb :home
end
