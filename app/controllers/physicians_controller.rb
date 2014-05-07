class PhysiciansController < ApplicationController

  def index
  end

  def edit
    @physician = find_physician
  end

  def update
    physician = find_physician
    physician.update(physician_params)
    redirect_to physicians_path
  end

  private

  def physician_params
    params.require(:physician).permit(
      :name,
      :state_prov,
      :gender,
      :specialty,
      :license_number,
      :dea_id,
      :npi_id,
      :upin_id,
      :clinic_name,
      :clinic_address,
      :clinic_locality,
      :clinic_state_prov,
      :clinic_zip_postal,
      :clinic_country
    )
  end

  def find_physician
    Physician.find(params[:id])
  end

end
