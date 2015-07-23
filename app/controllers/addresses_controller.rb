class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /addresses
  def index
    @addresses = Address.all
  end

  # GET /addresses/1
  def show
    set_address
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
    set_address
  end

  # POST /addresses
  def create
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /addresses/1
  def update
    set_address

    respond_to do |format|
      if set_address.update_attributes(address_params)
        format.html { redirect_to set_address, notice: 'Address was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /addresses/1
  def destroy
    set_address
    set_address.destroy

    respond_to do |format|
      format.html { redirect_to addresses_path, notice: 'Address was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:lane1, :lane2)
    end
end
