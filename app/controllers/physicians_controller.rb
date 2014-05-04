class PhysiciansController < ApplicationController

  def index
  end

  def edit
    @physician = Physician.find(params[:id])
  end

  def update
    physician = Physician.find(params[:id])
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
      :license_number)
  end

end
