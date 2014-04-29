class ClinicsController < ApplicationController

  def edit
    @clinic = Clinic.find(params[:id])
  end

  def update
    clinic = Clinic.find(params[:id])
    clinic.update(clinic_params)
    redirect_to clinics_path
  end

  def index
    @clinic = current_user
  end

  private

  def clinic_params
    params.require(:clinic).permit(
      :name,
      :address,
      :phone,
      :locality,
      :zip_postal,
      :state_prov,
      :country
    )
  end

end