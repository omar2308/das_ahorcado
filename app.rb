require 'sinatra'
require './config'
require './lib/ahorcado.rb'

ADIVINAR = 'A'
JUEGO= Ahorcado.new(ADIVINAR)
get '/' do    
    erb :index
end

post '/juego' do
    @letra = params['letra']
    
    if JUEGO.adivinar(@letra) then
        @mensaje = 'Correcto'
        @mensajefin = "Juego Terminado, Ganaste!"
    else
        @mensaje = 'Incorrecto'
        @mensajefin = "Juego Terminado, Fallaste!"
    end

    logger.info "loading data"
    erb :juego
end