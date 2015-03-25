require 'sinatra'
require 'sinatra/reloader'
require_relative 'checker'

number = rand(100)

get '/' do
  guess = params['guess'].to_i
  message = Checker.check_guess(number, guess)
  erb :index, :locals => {:number => number, :guess => guess, :message => message}
end
