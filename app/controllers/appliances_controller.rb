class AppliancesController < ApplicationController
  before_action :set_appliance, only: %i[ show edit update destroy ]

  # GET /appliances or /appliances.json
  def index
    @appliances = Appliance.all
  end

  # GET /appliances/1 or /appliances/1.json
  def show
  end

  # GET /appliances/new
  def new
    @appliance = Appliance.new
  end

  # GET /appliances/1/edit
  def edit
  end

  # POST /appliances or /appliances.json
  def create
    @appliance = Appliance.new(appliance_params)

    respond_to do |format|
      if @appliance.save
        format.html { redirect_to appliance_url(@appliance), notice: "Appliance was successfully created." }
        format.json { render :show, status: :created, location: @appliance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appliances/1 or /appliances/1.json
  def update
    respond_to do |format|
      if @appliance.update(appliance_params)
        format.html { redirect_to appliance_url(@appliance), notice: "Appliance was successfully updated." }
        format.json { render :show, status: :ok, location: @appliance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appliances/1 or /appliances/1.json
  def destroy
    @appliance.destroy

    respond_to do |format|
      format.html { redirect_to appliances_url, notice: "Appliance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appliance_params
      params.require(:appliance).permit(:appliance_type, :category, :last_serviced, :make, :model, :notes, :service_due, :year, :contact_id, :house_id)
    end
end
