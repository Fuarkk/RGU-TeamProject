class StaffController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]
  before_action :accept_all_params
  # GET /staff
  # GET /staff.json
  def index
    @staff = Staff.all
  end

  # GET /staff/1
  # GET /staff/1.json
  def show
  end

  # GET /staff/new
  def new
  end

  # GET /staff/1/edit
  def edit
    @staff = Staff.find(params[:id])
    puts params[:staff]

    if(params[:staff])

    @staff.update({name: params[:staff][:name],
      address: params[:staff][:address],
      postcode: params[:staff][:postcode],
      dateOfBirth: params[:staff][:dateOfBirth]})

    end

  end

  # POST /staff
  # POST /staff.json
  def create
    @staff = Staff.new(staff_params[:staff])

    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        format.json { render :show, status: :created, location: @staff }
      else
        format.html { render :new }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff/1
  # PATCH/PUT /staff/1.json
  def update
    if(params[:staff])

    @staff.update({name: params[:staff][:name],
      address: params[:staff][:address],
      postcode: params[:staff][:postcode],
      dateOfBirth: params[:staff][:dateOfBirth]})
    end
  end

  # DELETE /staff/1
  # DELETE /staff/1.json
  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staff_url, notice: 'Staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    def accept_all_params
      params.permit!
    end

    # Only allow a list of trusted parameters through.
    def staff_params
      params.permit!
    end
end
