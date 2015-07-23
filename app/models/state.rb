class State < ActiveRecord::Base
	has_many :properties
	has_many :cities
end
