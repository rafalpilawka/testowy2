class AuthorsController < ApplicationController
	def index
		@authors = Author.all
	end

	def new
		@author = Author.new
	end

	def show
		 @author = Author.find(params[:id])
	end

	def create
		@author = Author.create(author_params)
		if @author.valid?
		redirect_to author_url(@author) , :notice=> "Utworzono poprawnie"
	    else
	    	render "new"
	    end
	end

	def edit
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.find(params[:id])
		@author.update(author_params)
		
		redirect_to authors_url#(@author) , :notice=> "zapisalem poprawnie"
	end

	def destroy
		@author = Author.find(params[:id])
		@author.destroy
		redirect_to authors_url(@author) , :notice => "usunieto"
	end

	private

    def author_params
      params.require(:author).permit(:name , :age , :country)
    end  

end
