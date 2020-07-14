require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:beatysalon.db"

class Client < ActiveRecord::Base
end

get '/' do
  erb 'hello'
end

