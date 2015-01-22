class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
	end

	def create
	 	@book = Book.create(book_params)
	 	if @book.valid?
	 		redirect_to books_url ,  :notice=>'utworzono poprawnie'
	 	else
	 		render "new"
	 	end

	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)

		redirect_to book_url(@book) , :notice=>"nadpisalem poprawnie"
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to book_url(@book), :notice=>"usunieto ksiazke"
	end

	private

	def book_params
		params.require(:book).permit(:title , :pages , :author_id, :label_ids => [])
	end
end
