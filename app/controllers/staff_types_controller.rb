class StaffTypesController < ApplicationController
  before_action :set_staff_type, only: [:show, :edit, :update, :destroy]

  # GET /staff_types
  # GET /staff_types.json
  def index
    @staff_types = StaffType.all
  end

  # GET /staff_types/1
  # GET /staff_types/1.json
  def show
  end

  # GET /staff_types/new
  def new
    @staff_type = StaffType.new
  end

  # GET /staff_types/1/edit
  def edit
  end

  # POST /staff_types
  # POST /staff_types.json
  def create
    @staff_type = StaffType.new(staff_type_params)

    respond_to do |format|
      if @staff_type.save
        format.html { redirect_to @staff_type, notice: 'Staff type was successfully created.' }
        format.json { render :show, status: :created, location: @staff_type }
      else
        format.html { render :new }
        format.json { render json: @staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_types/1
  # PATCH/PUT /staff_types/1.json
  def update
    respond_to do |format|
      if @staff_type.update(staff_type_params)
        format.html { redirect_to @staff_type, notice: 'Staff type was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_type }
      else
        format.html { render :edit }
        format.json { render json: @staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_types/1
  # DELETE /staff_types/1.json
  def destroy
    @staff_type.destroy
    respond_to do |format|
      format.html { redirect_to staff_types_url, notice: 'Staff type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_type
      @staff_type = StaffType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def staff_type_params
      params.fetch(:staff_type, {})
    end
end
