class StaffingsController < ApplicationController
  before_action :set_staffing, only: [:show, :edit, :update, :destroy]

  # GET /staffings
  # GET /staffings.json
  def index
    @staffings = Staffing.all
  end

  # GET /staffings/1
  # GET /staffings/1.json
  def show
  end

  # GET /staffings/new
  def new
    @staffing = Staffing.new
  end

  # GET /staffings/1/edit
  def edit
  end

  # POST /staffings
  # POST /staffings.json
  def create
    @staffing = Staffing.new(staffing_params)

    respond_to do |format|
      if @staffing.save
        format.html { redirect_to @staffing, notice: 'Staffing was successfully created.' }
        format.json { render :show, status: :created, location: @staffing }
      else
        format.html { render :new }
        format.json { render json: @staffing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffings/1
  # PATCH/PUT /staffings/1.json
  def update
    respond_to do |format|
      if @staffing.update(staffing_params)
        format.html { redirect_to @staffing, notice: 'Staffing was successfully updated.' }
        format.json { render :show, status: :ok, location: @staffing }
      else
        format.html { render :edit }
        format.json { render json: @staffing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffings/1
  # DELETE /staffings/1.json
  def destroy
    @staffing.destroy
    respond_to do |format|
      format.html { redirect_to staffings_url, notice: 'Staffing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staffing
      @staffing = Staffing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staffing_params
      params.require(:staffing).permit(:first_name, :last_name, :middle_name, :cost_per_hour, :lawfirm_id, :matter_id)
    end
end
