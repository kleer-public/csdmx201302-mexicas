require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require 'lib/sopa_letras_bl'
@@lista =["chango","perro","gato","leon","Jirafa"]
@@sopaLetrasBl = SopaLetrasBl.new

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
  if @@sopaLetrasBl.esPalabraValida?(params["letraInicialX"],params["letraInicialY"],params["letraFinalX"],params["letraFinalY"])
    @mensaje="Palabra correcta"
  else
    @mensaje="Proporcione un numero entre 1 y 10" 
  end    
  erb:sopa_letras
end



