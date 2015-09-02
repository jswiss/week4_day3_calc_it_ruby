require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Home'
  erb :home
end

post '/calculate' do
  case params[:ops]
  when 'Add' then @basic = params[:input1].to_i + params[:input2].to_f
  when 'Subtract' then @basic = params[:input1].to_i - params[:input2].to_f
  when 'Multiply' then @basic = params[:input1].to_i * params[:input2].to_f
  when 'Divide' then @basic = params[:input1].to_i / params[:input2].to_f
  else
    @basic = 'Error. Please only enter numbers'
    erb :basic
  end
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

