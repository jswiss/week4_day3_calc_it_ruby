require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Home'
  erb :home
end

post '/basic_calc' do
  case params[:symbol]
  when '+' then @basic = params[:input1].to_f + params[:input2].to_f
  when '-' then @basic = params[:input1].to_f - params[:input2].to_f
  when '*' then @basic = params[:input1].to_f * params[:input2].to_f
  when '/' then @basic = params[:input1].to_f / params[:input2].to_f
  else
    erb :basic_calc
  end
    erb :basic_calc
end

post '/bmi_calc' do
    case params[:unit].downcase
    when 'metric' then @bmi = params[:weight].to_f / (params[:height].to_f * params[:height].to_f)
    when 'imperial' then @bmi = params[:weight].to_f / (params[:height].to_f * params[:height].to_f) * 703
    else
    erb :bmi_calc
  end
  erb :bmi_calc
end

post '/dist_calc' do
  @mpg = (params[:mpg].to_f > 60) ? [0, params[:mpg].to_f - (params[:speed].to_f - 60) * 2].max : params[:mpg].to_f 
  @cost = params[:distance].to_f/(@mpg/params[:cost].to_f)
  @time = params[:distance].to_f/params[:mph].to_f
  erb :distance 
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

