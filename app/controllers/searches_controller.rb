class SearchesController < ApplicationController
   respond_to :json

  def show
    respond_with Drug.where("name ILIKE ?", "#{params[:term]}%").order("name ASC").limit(10)
  end

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
