require 'sinatra'
require 'sinatra/reloader' 
    #Routes:
    #get is a request with relative url and a block to execute
   	get '/:name' do
        'Hello, #{params[:name]}'
    end
