class Author < ActiveRecord::Base
	
	has_many :books 
	validates :name , :presence=>true
	validates :age , :numericality => {:greater_than=>15 , :less_than=>120}
	has_many :comments , :as=>:commentable
	#validates :country , :presence=>true
	validates :name, :presence=>true , :uniqueness =>true
end
