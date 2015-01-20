class Book < ActiveRecord::Base
	
	#has_many :labels , :through=>:books_label
	has_many :books_labels
	belongs_to :books_labels
	belongs_to :author
	has_and_belongs_to_many :labels


	#has_many :labels , :through=>:books_labels
	#belongs_to :books_labels
	#belongs_to :labels
	

	validates :title , :presence=>true
	validates :pages ,:numericality=>{:greater_than=>10}
	
	def self.filter(params)
		Rails.logger.info "*** #{params}"
		if  params["p"].blank?
			all
		else 
	 		if params["p"]
				joins(:books).where("label_id=?" , params["p"])
			end

		end

	end
end
