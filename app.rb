require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = params[:user_phrase]
      output = PigLatinizer.new.piglatinize(word)
    "#{output}"
  end

end
