class Property < ActiveRecord::Base
  
  #belongs_to :category
	#belongs_to :ownership
	#belongs_to :type
  belongs_to :role
  belongs_to :user
  
 
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

	has_attached_file :image, styles: { medium: "100x100#>", thumb: "100x100#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

 

  def self.search(query)
    where('title Like ? OR c_type LIKE ? OR ct_type LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%")
  end
end

