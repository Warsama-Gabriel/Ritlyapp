class UrlsController < ApplicationController



	def new
    #make a new url object
    @url = Url.new 
    end

	def create

    @url = Url.create url_params #grabbing our link
    @url.random_string = SecureRandom.urlsafe_base64(3) #generating random string
    @url.save
    redirect_to url_path(@url)
    end

	def show
	@url = Url.find(params[:id])
    @full_path = "#{request.protocol}#{request.host_with_port}/#{@url.random_string}"
    end

    def redirect
    @url = Url.find_by random_string: params[:data]
      if @url 
        redirect_to "http://"+ @url.link
      else
        redirect_to root_path
      end
    end

    def preview
     @url = Url.find_by random_string: params[:data]
     redirect_to "http://"+ @url.link
      unless @url
       redirect_to root_path
      end
    end

    private
    # specifies what we can write to the database as a new entry
    #we can write a title and description to the database
    def url_params
      params.require(:url).permit(:link)
    end
end
