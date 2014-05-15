class ScriptsController < ApplicationController

  def new
    @patient = find_patient
    @script = Script.new
  end

  def create
    patient = find_patient
    physician = current_user.profile
    script = physician.scripts.create(script_params)
    redirect_to patient_script_path(patient, script)
  end

  def show
    @patient = find_patient
    @script = Script.find_by(token: params[:id])
    @qr_code = create_qr_code
  end

  private

  def script_params
    params.require(:script).permit(
      :med,
      :dose,
      :directions,
      :pill_count,
      :refills,
      :date
    ).merge(
      patient: find_patient
    )
  end

  def find_patient
    Patient.find(params[:patient_id])
  end

  def create_qr_code
    qr = Qrcode.new(patient_script_url(params[:patient_id], params[:id]))
    qr.process
  end
end