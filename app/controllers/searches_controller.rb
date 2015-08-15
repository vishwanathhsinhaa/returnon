class SearchesController < ApplicationController
	def new
		@search = Search.new
		@categories = Property.uniq.pluck(:c_type)
		@cities = Property.uniq.pluck(:ct_type)
	end

	def create
		@search = Search.create!(params[:search_params])
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
	end

	private
	
	def search_params
		params.require(:search).permit(:keywords, :c_type, :ct_type, :min_price, :max_price)
	end

end
