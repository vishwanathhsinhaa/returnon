class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #  helper_method :property_type_options
   #before_filter :search_query

    # def search_query
     #   search_params = {'s' => 'c_type desc'}
     #   search_params = search_params.merge(params[:q]) if params[:q]
     #   @q = Properties.search(search_params)
    #  end

     # def property_type_options
     #   a = Category.all.map do |t|
     #     [t.c_type, t.city_id]
     #   end
     #   [['Property type', '']].concat(a)
   #   end
end
