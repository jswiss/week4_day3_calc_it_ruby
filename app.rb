require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Home'
  erb :home
end

get '/basic' do
  @title = 'Basic Calculator'
  erb :basic
end

get '/mortgage' do
  @title = 'Mortgage Calculator'
  erb :mortgage
end

get '/bmi' do
  @title = 'Body Mass Index Calculator'
  erb :bmi
end

get '/distance' do
  @title = 'Distance Calculator'
  erb :distance
end

get '/exchange_rate' do
  @title = 'Exchange Rate Calculator'
  erb :exchange_rate
end

