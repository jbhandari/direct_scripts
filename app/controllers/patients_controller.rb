class PatientsController < ApplicationController

  def index
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    patient = Patient.find(params[:id])
    patient.update(patient_params)
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(
      :first_name,
      :last_name,
      :gender,
      :age,
      :address,
      :phone_number,
      :insurance_provider,
      :policy_number)
  end

end
