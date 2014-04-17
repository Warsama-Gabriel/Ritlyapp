require 'sinatra'
# require 'sinatra/reloader' 
    #Routes:
    #get is a request with relative url and a block to execute
   	get '/hello/:name/:last_name' do
     # params[:name,:last_name]
     #/hello/john/doe?age=21;,height=21
      "Hello #{params[:name]} #{params[:last_name]} you are #{params[:age]} 
      and #{params[:height]}"
      params.inspect
      str = ""
      params.each {|k,v| str+= "#{k.to_s}" => "#{v.to_s}"
    end
