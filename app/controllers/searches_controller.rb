class SearchesController < ApplicationController

  def create
    @query = params[:search][:query]
    @patients = find_patients
  end

  private

  def find_patients
   patient_search = PatientSearcher.new(params[:search])
   patient_search.patients
  end
end
