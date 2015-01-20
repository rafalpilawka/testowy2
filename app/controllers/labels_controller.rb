class LabelsController < ApplicationController
	def index
		@labels = Label.all
	end

	def new
		@label = Label.new
	end

	def show
		 @label = Label.find(params[:id])
	end

	def create
		@label = Label.create(label_params)
		if @label.valid?
		redirect_to labels_url , :notice=> "Utworzono poprawnie"
	    else
	    	render "new"
	    end
	end

	def edit
		@label = Label.find(params[:id])
	end

	def update
		@label = Label.find(params[:id])
		@label.update(label_params)
		
		redirect_to label_url(@label) , :notice=> "zapisalem poprawnie"
	end

	def destroy
		@label = Label.find(params[:id])
		@label.destroy
		redirect_to labels_url(@label) , :notice => "usunieto"
	end

	private

    def label_params
      params.require(:label).permit(:name  ,:country , :book_ids =>[])
    end  
end
