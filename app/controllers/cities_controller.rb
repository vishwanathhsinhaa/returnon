class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  def index
    @cities = City.all
  end

  # GET /cities/1
  def show
    set_city
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1/edit
  def edit
    set_city
  end

  # POST /cities
  def create
    @city = City.new(city_params)

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /cities/1
  def update
    set_city

    respond_to do |format|
      if set_city.update(city_params)
        format.html { redirect_to set_city, notice: 'City was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /cities/1
  def destroy
    set_city
    set_city.destroy

    respond_to do |format|
      format.html { redirect_to cities_path, notice: 'City was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:ct_type)
    end
end
