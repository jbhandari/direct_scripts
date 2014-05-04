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
      :name,
      :gender,
      :birth_date,
      :address,
      :phone_number,
      :insurance_provider,
      :policy_number,
      :patient,
      :zip_postal,
      :locality,
      :state_prov,
      :country)
  end

end
