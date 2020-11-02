require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/juego' do
    @letra= params['letra']
    @adivinar = 'A'
    if @letra == @adivinar then
        @mensaje = 'Correcto'
    else
        @mensaje = 'Incorrecto'
    end

    logger.info "loading data"
    erb :juego
end