class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  # GET /types
  def index
    @types = Type.all
  end

  # GET /types/1
  def show
    set_type
  end

  # GET /types/new
  def new
    @type = Type.new
  end

  # GET /types/1/edit
  def edit
    set_type
  end

  # POST /types
  def create
    @type = Type.new(type_params)

    respond_to do |format|
      if @type.save
        format.html { redirect_to @type, notice: 'Type was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  # PATCH/PUT /types/1
  def update
    set_type

    respond_to do |format|
      if set_type.update_attributes(type_params)
        format.html { redirect_to set_type, notice: 'Type was successfully updated.' }       
      else
        format.html { render :edit }       
      end
    end
  end

  # DELETE /types/1
  def destroy
    set_type
    set_type.destroy

    respond_to do |format|
      format.html { redirect_to types_path, notice: 'Type was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_params
      params.require(:type).permit(:u_type)
    end
end
