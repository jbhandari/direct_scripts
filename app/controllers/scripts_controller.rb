class ScriptsController < ApplicationController

  def new
  end

  def show
    @patient = Patient.find(params[:patient_id])
  end
end
