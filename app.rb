require 'sinatra/base'

class App < Sinatra::Base
  
  get '/newteam' do 
    erb :newteam
  end 
  
  post '/newteam' do #make post request on newteam 
    #Allows the controller to use these instance variables to display information to user when called in erb file
    @name = params[:name] 
    @coach = params[:coach] 
    @pg = params[:pg]
    @sg = params[:sg]
    @pf = params[:pf] 
    @sf = params[:sf] 
    @c = params[:c] 
    erb :team #returns the views of team.erb 
  end

end
