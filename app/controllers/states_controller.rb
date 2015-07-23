class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  # GET /states
  def index
    @states = State.all
  end

  # GET /states/1
  def show
    set_state
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    set_state
  end

  # POST /states
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to @state, notice: 'State was successfully created.' }
        
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /states/1
  def update
    set_state

    respond_to do |format|
      if set_state.update(state_params)
        format.html { redirect_to set_state, notice: 'State was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /states/1
  def destroy
    set_state
    set_state.destroy

    respond_to do |format|
      format.html { redirect_to states_path, notice: 'State was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:s_type)
    end
end
