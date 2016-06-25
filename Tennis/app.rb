require 'sinatra'
require 'better_errors'

configure :development do
 use BetterErrors::Middleware
 BetterErrors.application_root = __dir__
end

enable :sessions

get '/' do
  erb :index
end

post '/iniciar' do
  session["jugador1"] = params["jugador1"]
  session["jugador2"] = params["jugador2"]
  session["marcador"] = "0-0"
  erb :juego
end

post '/marcar/j1' do
  if session["marcador"] == "0-0"
    session["marcador"] = "15-0"
  else
    session["marcador"] = "30-0"
  end

  erb :juego
end
