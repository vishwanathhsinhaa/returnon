class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # Search /properties
  def search
    if params[:search].present?
      @properties = Property.search(params[:search])
    else
      @properties = Property.all
    end
  end
 
  # GET /properties
  def index 
      @properties = Property.all
  end
  # GET /properties/1
  def show
    set_property
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    set_property
  end

  # POST /properties
  def create
    @property = Property.new(property_params)

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
    set_property

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
    set_property
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
      params.require(:property).permit(:title, :address, :area, :price, :tenant_name, :lease_commence_date, :lease_expiry_date, :lease_tenure, :rent_per_month, :roi, :lockin_period, :property_image, :category_id, :p_type, :p_code, :p_date, :ownership_id, :type_id, :city_id, :state_id, :desc, :image, :latitude, :longitude)
    end
end
