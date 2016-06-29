require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end

    post '/teams' do 
      @member1 = params[:hero][0]
      @member2 = params[:hero][1]
      @member3 = params[:hero][2]
      @team = params[:team]
      erb :team
    end

    get '/get' do
      erb :team
    end

end
