class PatientSearcher < ActiveRecord::Base

  def initialize(search_params)
    @search_params = search_params
    @query = search_params[:query]
  end

  def patients
    find_patients_by_name_or_id
  end

  private

  attr_reader :search_params, :query

  def find_patients_by_name_or_id
    Patient.where(search_sql, "%#{query}%", query.to_i)
  end

  def search_sql
    "name ILIKE ? OR id = ?"
  end

end
