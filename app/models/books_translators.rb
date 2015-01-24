class BooksTranslators < ActiveRecord::Base
	belongs_to :book 
	belongs_to :translator 
end
