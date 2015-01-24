class Contract < ActiveRecord::Base
	belongs_to :book
	belongs_to :label
end
