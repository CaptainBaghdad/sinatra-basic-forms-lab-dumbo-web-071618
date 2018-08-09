require_relative 'config/environment'
require '/models/puppy'

class App < Sinatra::Base
  
  get '/' do 
     erb :index
  end 
  
  get '/new' do 
    
    erb :create_puppy 
  end 
  
  post '/' do 
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @newpupp = Puppy.new(@name,@breed,@age)
    erb :display_puppy
  end 
  
  get '/display_puppy.erb' do
     erb :display_puppy
  end 
end