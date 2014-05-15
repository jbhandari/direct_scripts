class PatientFindersController < ApplicationController
  before_action :ensure_authorization

  def new
  end

  def show
    @patient = Patient.find(params[:patient_id])
  end

  private

  def ensure_authorization
    if current_user.profile_type == 'Physician'
    elsif current_user.profile_type == 'Pharmacist'
    else redirect_to root_path
    end
  end

end
