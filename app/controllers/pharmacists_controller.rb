class PharmacistsController < ApplicationController
  before_action :ensure_signed_in, only: [:edit]
  before_action :ensure_user_validity, only: [:edit]
  
  def index
  end

  def edit
    @pharmacist = find_pharmacist
  end

  def update
    pharmacist = find_pharmacist
    pharmacist.update(pharmacist_params)
    redirect_to pharmacists_path
  end

  private

  def find_pharmacist
    Pharmacist.find(params[:id])
  end

  def pharmacist_params
    params.require(:pharmacist).permit(
      :name,
      :college,
      :license_id,
      :pharmacy_name,
      :pharmacy_address,
      :locality,
      :state_prov,
      :country,
      :zip_postal,
      :phone
    )
  end

end

