class Dashboard < ActiveRecord::Base
	has_many :properties
	belongs_to :user
end
