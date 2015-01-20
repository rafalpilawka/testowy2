class Author < ActiveRecord::Base
	
	has_many :books 
	validates :name , :presence=>true
	validates :age , :numericality => {:greater_than=>15 , :less_than=>120}
	#validates :country , :presence=>true

end
