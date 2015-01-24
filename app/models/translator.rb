class Translator < ActiveRecord::Base
	#has_and_belongs_to_many :books
	has_many :translations
	has_many :books ,  :through => :translations
	#has_many :books , :through=>:book_translators
	#belongs_to :book_translators

end
