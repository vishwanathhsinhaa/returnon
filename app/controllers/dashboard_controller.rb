class DashboardController < ApplicationController
  #before_action :set_dashboard, only: [:index, :show]

  def index
  	@users = User.all
  	@user = User.find(params[:id])||current_user
  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end

  def show
  	@user = User.find(params[:id])
    #@property = Property.all(:order => "created_at DESC")
    @properties = @user.properties

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  private
	  def params_dashboard
	  	params.require(:dashboard).permit(:status, :author, :email, :username, :id, :user_id, :user, :website, :bio, :skype, :dob, :age)
	  end
	  
end
