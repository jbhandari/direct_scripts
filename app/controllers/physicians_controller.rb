class PhysiciansController < ApplicationController
  before_action :ensure_signed_in, only: [:edit]
  before_action :ensure_user_validity, only: [:edit]

  def index
    check_authority
    @scripts = current_user.profile.scripts
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
      :clinic_country,
      :med_school,
      :medical_board
    )
  end

  def find_physician
    Physician.find(params[:id])
  end

  def check_authority
    if current_user.profile_type != 'Physician'
      redirect_to root_path
    end
  end

end
