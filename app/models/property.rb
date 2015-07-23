class Property < ActiveRecord::Base
  searchkick
	#require 'elasticsearch/model'
  belongs_to :category
	belongs_to :ownership
	belongs_to :type
  belongs_to :state
  belongs_to :city

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

	has_attached_file :image, styles: { medium: "1000x1000#>", thumb: "100x100#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  #include Elasticsearch::Model
  #include Elasticsearch::Model::Callbacks

   # def self.search(params)
    #	tire.search(load: true, page: params[:page], per_page: 2) do
#    		query { string params[:query], default_operator: "AND" } if params[:query].present?
 #   		filter :range, posted_at: {lte: Time.zone.now}
  #  		sort { by :posted_at, "desc" } if params[:query].blank?
    		#facet 
   # 	end
   # end

  #include Flex::ModelIndexer
  #flex.sync self

  #module Flex
   # include Flex::Scopes
   # flex.context = Property
   # scope :red, terms(:color => 'red')

   # scope :color do |color|
    #    term(:color => color).sort(:category => 'asc')
   # end

   # scope :a_scope, aproc
#  end

  
    
end

#total_red = Property::Flex.red.count
#first_red = Property::Flex.red.first
