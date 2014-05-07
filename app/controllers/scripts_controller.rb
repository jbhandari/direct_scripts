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
    @script = Script.find(params[:id])
    @patient = find_patient
  end

  private

  def script_params
    params.require(:script).permit(
      :med,
      :dose,
      :directions,
      :pill_count,
      :refills
    ).merge(
      patient: find_patient
    )
  end

  def find_patient
    Patient.find(params[:patient_id])
  end

end
