class Search < ActiveRecord::Base
	
	def search_properties
		properties = Property.all

		properties = properties.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
		properties = properties.where(["c_type Like ?", c_type]) if c_type.present?
		properties = properties.where(["ct_type Like ?", ct_type]) if ct_type.present?
		properties = properties.where(["price >= ?", min_price]) if min_price.present?
		properties = properties.where(["price <= ?", max_price]) if max_price.present?
		
		return properties
	end
end
