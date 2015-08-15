class Role < ActiveRecord::Base
	has_many :properties, :through => :propery_id
    has_many :users, :through => :properties
end
