class ExtraDutiesController < ApplicationController
  before_action :set_extra_duty, only: [:show, :edit, :update, :destroy]

  # GET /extra_duties
  # GET /extra_duties.json
  def index
    @extra_duties = ExtraDuty.all
  end

  # GET /extra_duties/1
  # GET /extra_duties/1.json
  def show
  end

  # GET /extra_duties/new
  def new
    @extra_duty = ExtraDuty.new
  end

  # GET /extra_duties/1/edit
  def edit
  end

  # POST /extra_duties
  # POST /extra_duties.json
  def create
    @extra_duty = ExtraDuty.new(extra_duty_params)

    respond_to do |format|
      if @extra_duty.save
        format.html { redirect_to @extra_duty, notice: 'Extra duty was successfully created.' }
        format.json { render :show, status: :created, location: @extra_duty }
      else
        format.html { render :new }
        format.json { render json: @extra_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_duties/1
  # PATCH/PUT /extra_duties/1.json
  def update
    respond_to do |format|
      if @extra_duty.update(extra_duty_params)
        format.html { redirect_to @extra_duty, notice: 'Extra duty was successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_duty }
      else
        format.html { render :edit }
        format.json { render json: @extra_duty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_duties/1
  # DELETE /extra_duties/1.json
  def destroy
    @extra_duty.destroy
    respond_to do |format|
      format.html { redirect_to extra_duties_url, notice: 'Extra duty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_duty
      @extra_duty = ExtraDuty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extra_duty_params
      params.fetch(:extra_duty, {})
    end
end
