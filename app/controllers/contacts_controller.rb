class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  def show
    set_contact
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
    set_contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /contacts/1
  def update
    set_contact

    respond_to do |format|
      if set_contact.update_attributes(contact_params)
        format.html { redirect_to set_contact, notice: 'Contact was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /contacts/1
  def destroy
    set_contact
    set_contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_path, notice: 'Contact was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:email, :phone)
    end
end
