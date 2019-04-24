require_relative 'config/environment'
require 'securerandom'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "SecureRandom.hex(64)"
  end

  get '/' do
    erb :index
  end

  post '/checkout'
    session[:item] = params[:item]
    @session = session
    erb :checkout
end
