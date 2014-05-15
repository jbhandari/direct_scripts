class PatientsController < ApplicationController
  before_action :ensure_signed_in, only: [:edit]
  before_action :ensure_user_validity, only: [:edit]

  def index
  end

  def edit
    @patient = find_patient
  end

  def update
    patient = find_patient
    patient.update(patient_params)
    redirect_to patients_path
  end

  def show
    @patient = find_patient
    if authorized_viewer?
    else
      flash[:notice] = 'Unauthorized'
      redirect_to new_patient_finders_path
    end
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
      :country
    )
  end

  def find_patient
    Patient.find(params[:id])
  end

  def authorized_viewer?
    current_user.profile_type =='Physician' ||
    current_user.profile_type =='Pharmacist' ||
    current_user == @patient
  end

end
