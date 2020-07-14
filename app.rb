require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "beatysalon.db"}

class Client < ActiveRecord::Base
end

class Specialist < ActiveRecord::Base
end

get '/' do
  @specialists = Specialist.all
  erb :index
end

