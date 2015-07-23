class OwnershipsController < ApplicationController
  before_action :set_ownership, only: [:show, :edit, :update, :destroy]

  # GET /ownerships
  def index
    @ownerships = Ownership.all
  end

  # GET /ownerships/1
  def show
    set_ownership
  end

  # GET /ownerships/new
  def new
    @ownership = Ownership.new
  end

  # GET /ownerships/1/edit
  def edit
    set_ownership
  end

  # POST /ownerships
  def create
    @ownership = Ownership.new(ownership_params)

    respond_to do |format|
      if @ownership.save
        format.html { redirect_to @ownership, notice: 'Ownership was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ownerships/1
  def update
    set_ownership

    respond_to do |format|
      if set_ownership.update_attributes(ownership_params)
        format.html { redirect_to set_ownership, notice: 'Ownership was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ownerships/1
  def destroy
    set_ownership
    set_ownership.destroy

    respond_to do |format|
      format.html { redirect_to ownerships_path, notice: 'Ownership was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ownership
      @ownership = Ownership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ownership_params
      params.require(:ownership).permit(:o_type)
    end
end
