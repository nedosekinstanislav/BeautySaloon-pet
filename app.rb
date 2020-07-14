require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:beatysalon.db"

get '/' do
  erb 'hello'
end

