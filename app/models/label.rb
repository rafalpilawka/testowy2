class Label < ActiveRecord::Base
	#has_many :authors ,:through=>:authors_labels
	#has_and_belongs_to_many :books
	#has_many :books ,  :through => :books_label
	has_many :contracts
	has_many :books , :through => :contracts
	validates :country , :presence=>true
	validates :name , :presence=>:true
end
