class City < ActiveRecord::Base
	has_many :properties
	belongs_to :state
end
