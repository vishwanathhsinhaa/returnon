class SearchSuggestionsController < ApplicationController
	def index
		render json: SearchSuggestions.terms_for(params[:term_params])
	end

	private
	def term_params
		params.require(:term).permit(:term, :spopularity)
	end

end
