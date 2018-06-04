require 'sinatra/base'

class App < Sinatra::Base
  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params["name"]
    @coach = params["coach"]
    @point_guard = params["pg"]
    @power_forward = params["pf"]
    @shooting_guard = params["sg"]
    @center = params["c"]
    erb :team
  end

end
