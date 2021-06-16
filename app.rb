require "sinatra"
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Battle!'
  end

end

#   run! if app_file == $0

