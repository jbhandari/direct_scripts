class SearchesController < ApplicationController

  def create
    @query = params[:search][:query]
    @patients = find_searched_patients
  end

  private

  def find_searched_patients
   patient_search = PatientSearcher.new(params[:search])
   patient_search.patients
  end
end
