require 'sinatra'
require 'better_errors'
require './lib/intro'

configure :development do
 use BetterErrors::Middleware
 BetterErrors.application_root = __dir__
end

get '/' do
    erb :index
end

post '/saludar' do
  nombre = params["nombre"]
  idioma = params["idioma"]

  saludador = Saludador.new idioma
  @resultado = saludador.saludar nombre

  erb :saludar
end
