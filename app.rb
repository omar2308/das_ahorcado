require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
    erb :index
end

post '/juego' do

    
    @letra = params['letra']
    @adivinar = 'A'

    juego = Ahorcado.new(@letra)
    if juego.adivinar(@adivinar) then
        @mensaje = 'Correcto'
        @mensajefin = "Juego Terminado, Ganaste!"
    else
        @mensaje = 'Incorrecto'
        @mensajefin = "Juego Terminado, Fallaste!"
    end

    logger.info "loading data"
    erb :juego
end