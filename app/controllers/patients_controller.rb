class PatientsController < ApplicationController
before_filter :authenticate_patient!
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end


  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      flash[:notice] = "Patient was created successfully"
       redirect_to @patient
    else
      flash[:error] = "Sorry, There was some an error when creating a patient. Please try again."
      render :new
    end
  end


  # def edit
  #   @patient = Patient.find(params[:id])
  # end

  # def update
  #   @patient = Patient.find(params[:id])

  #   if @patient.update_attributes(patient_params)
  #     flash[:notice] = "Patient information was updated successfully"
  #     redirect_to patient_path
  #   else
  #     flash[:error] = "Sorry, There was some an error when updating a patient information. Please try again."
  #     render :edit
  #   end

  # end

  def destroy
    @patient = Patient.find(params[:id])

    if @patient.destroy
      flash[:notice] = "Patient was successfully removed."
      # redirect_to home_path
    else
      flash[:error] = "There was an error removing the patient. Please try again."
        render :show
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :email, :phone_no, :home_address, :facility_address, :pickup_time, days_of_week:[])
  end

end
