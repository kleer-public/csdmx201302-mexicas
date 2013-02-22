require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
@@lista =["chango","perro","gato","leon","Jirafa"]

configure do
  set :views, "#{File.dirname(__FILE__)}/views" 
end

get '/' do 
   @array=@@lista
  erb:lista_palabras
end

get '/iniciar' do 
  erb:sopa_letras
end

post '/buscarPalabra' do 
  erb:sopa_letras
end



