class PropertiesController < ApplicationController
  
  #before_filter :authenticate_user!, only: [ :create, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_property, only: [:show, :edit, :update, :destroy]
 
  load_and_authorize_resource param_method: :property_params 
    
  
  # GET /properties
  def index      
      if params[:search]
        @properties = Property.search(params[:search]).order("created_at DESC").page(params[:page])
      else
        @properties = Property.all.order('created_at DESC').page(params[:page])
      end

      #if @user = current_user
      #   @properties = Property.find(params[:id])
      #else
      #   @properties = Property.all.order('created_at DESC').page(params[:page])
      #end
  end

  # GET /properties/1
  def show
  set_property
  #  @properties = set_property.properties
  end

  # GET /properties/new
  def new
   @property = current_user.properties.build
  end

  # GET /properties/1/edit
  def edit
    set_property
 
  end

  # POST /properties
  def create
    #@user = current_user
    @property = current_user.properties.build(property_params)     
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /properties/1
  def update
    #set_property

    respond_to do |format|
      if set_property.update_attributes(property_params)
        format.html { redirect_to set_property, notice: 'Property was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /properties/1
  def destroy
   # set_property
    set_property.destroy

    respond_to do |format|
      format.html { redirect_to properties_path, notice: 'Property was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:title, :address, :area, :price, :tenant_name, :"lease_commence_date(1i)", :"lease_commence_date(2i)", :"lease_commence_date(3i)", :"lease_expiry_date(1i)", :"lease_expiry_date(2i)", :"lease_expiry_date(3i)", :lease_tenure, :rent_per_month, :roi, :lockin_period, :c_type, :p_type, :pin_code, :"posting_date(1i)", :"posting_date(2i)", :"posting_date(3i)", :o_type, :u_type, :ct_type, :s_type, :desc, :image, :latitude, :longitude, :currency, :desc, :a_type, :yrs, :c_value, :user_id)
    end

   
end
