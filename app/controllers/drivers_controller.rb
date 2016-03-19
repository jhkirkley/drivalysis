class DriversController < ApplicationController
   before_action :authenticate_user!, :except => [:new, :create]
   before_action :set_driver, only: [:destroy]
  # GET /drivers
  # GET /drivers.json
  def index
    @drivers = Driver.all
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
    @driver = Driver.find(params[:id])

  end

  # GET /drivers/new
  def new
    @driver = Driver.new
  end

  # GET /drivers/1/edit
  def edit
    @driver = Driver.find(params[:id])
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)
    @user = {}
    respond_to do |format|
      if @driver.save
        @user = User.find_by_email(driver_params[:user_attributes][:email])
        sign_in(@user)
        format.html { redirect_to @driver, notice: 'Driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'Driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:name, :phone, :available_monday, :available_tueday, :neighborhood, :address,:available_wednesday, :available_thursday, :available_friday, :available_saturday, :available_sunday,:available_time_monday, :available_time_tuesday, :available_time_wednesday, :available_time_thursday,:available_time_friday, :available_time_sauterday, :available_time_sunday, :wheel_chair_accessible, :willing_to_carpool, :assistance_comfort_level, user_attributes: [:id, :email, :password ])
     #params.require(:driver).permit!
    end
end
