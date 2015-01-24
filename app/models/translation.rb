class Translation < ActiveRecord::Base
	belongs_to :translator
	belongs_to :book

end
