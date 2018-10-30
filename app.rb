require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    p = PigLatinizer.new
    @pig_latin = p.piglatinize(params[:str])
    erb :pig_latinize
  end

end
