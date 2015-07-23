class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 50)
    else
      @locations = Location.all
    end
  end

  # GET /locations/1
  def show
    set_location
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
    set_location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /locations/1
  def update
    set_location

    respond_to do |format|
      if set_location.update_attributes(location_params)
        format.html { redirect_to set_location, notice: 'Location was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /locations/1
  def destroy
    set_location
    set_location.destroy

    respond_to do |format|
      format.html { redirect_to locations_path, notice: 'Location was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :state, :city, :latitude, :longitude, :zip_code)
    end
end
