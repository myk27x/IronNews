require 'sqlite3'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/ironnews.sqlite3"
)

class Stories < ActiveRecord::Base
end

require 'sinatra'
require 'sinatra/reloader' if development?
set :port, 3027

require 'erb'
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :home
end

get '/jobs' do
  erb :jobs
end
