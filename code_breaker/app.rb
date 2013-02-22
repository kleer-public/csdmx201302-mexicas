require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/code_breaker'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	@@game = CodeBreaker.new
	erb :game
end

get '/guess' do
	guess_code = params[:code]
	if (guess_code == @@game.secret_code)
		@mensaje = "Ganaste!"
	else 
		@mensaje = "Intenta nuevamente!"
		@pista = @@game.break_code(guess_code)
	end 
	erb :game
end 
