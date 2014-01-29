require 'sinatra'

get '/' do
  haml :index
end

get '/application.css' do
  scss :application
end

get '/application.js' do
  coffee :application
end

run Sinatra::Application
