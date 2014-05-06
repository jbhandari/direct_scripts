class ScriptsController < ApplicationController

  def new
    @patient = Patient.find(params[:patient_id])
    @script = Script.new
  end

end
