require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "beatysalon.db"}

class Client < ActiveRecord::Base
end

class Specialist < ActiveRecord::Base
end

before do 
  @specialists = Specialist.all
end

get '/' do
  erb :index
end

get '/contacts' do
  erb :contacts
end

get '/about' do
  erb :about
end

get '/visit' do
  erb :visit
end

post '/visit' do

  @username = params[:username]
  @phone = params[:phone]
  @datetime = params[:datetime]
  @specialist = params[:specialist]
  @color = params[:color]

  hh = {
    :username => 'Введите имя', 
    :phone => 'Введите телефон', 
    :datetime => 'Введите дату и время'
  }

  erb "<h2>Спасибо, мы ждем вас!</h2>"
end