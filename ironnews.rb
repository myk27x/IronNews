require 'sqlite3'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/ironnews.sqlite3"
)

class Stories < ActiveRecord::Base
  email_format_checker = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :title, :link, :email, presence: true
  # validates :link, format:
  validates :email, format: email_format_checker
end

require 'sinatra'
require 'sinatra/reloader' if development?
set :port, 3027

require 'erb'
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :home
end

get '/page2' do
  erb :page2
end

get '/page3' do
  erb :page3
end

get '/page4' do
  erb :page4
end

get '/page5' do
  erb :page5
end

get '/new' do
  erb :new
end

get '/add' do
    unless Stories.create(title: params["title"], link: params["link"], email: params["email"]).valid?
      redirect "/new_error"
    else
      redirect "/"
    end
end

get '/new_error' do
  erb :new_error
end

get '/jobs' do
  erb :jobs
end
