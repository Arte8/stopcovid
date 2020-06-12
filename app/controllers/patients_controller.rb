class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    Patient.create(patient_params)
    redirect_to root_path
  #   @patient = current_user.patients.create(patient_params)
  #   if @patient.valid?
  #     redirect_to root_path
  #   else
  #     render :new, status: :unprocessable_entity
     end
  # end

  private

  def patient_params
    params.require(:patient).permit(:name, :email, :phone, :address, :symptoms, :treatment, :travel, :status)
  end
  end
