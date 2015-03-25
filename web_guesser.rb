require 'sinatra'
require 'sinatra/reloader'
require_relative 'checker'

secret_number = rand(100)

get '/' do
  guess = params['guess'].to_i
  message = Checker.check_guess(secret_number, guess)
  win_message = Checker.check_win(secret_number, guess)
  erb :index, :locals => {:secret_number => secret_number, :guess => guess, :message => message, :win_message => win_message}
end
