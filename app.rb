require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "beatysalon.db"}

class Client < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :phone, presence: true
  validates :datestamp, presence: true
  validates :color, presence: true
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
  @c = Client.new
  erb :visit
end

post '/visit' do

  @c = Client.new params[:client]
    if @c.save
      erb "<h2>Спасибо, мы ждем вас!</h2>"
    else
      @error = @c.errors.full_messages.first
      erb :visit
    end
end