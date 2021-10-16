class DirectoriesController < ApplicationController
before_action :authenticate_user!, :check_if_patient, only: [:index]
  
  # GET /directory
  def index
    # if params[:search]
    #   search_term = params[:search].downcase.gsub(/\s+/, "")
    #   @doctors = Doctor.all.select { |d|
    #           d.full_name.downcase.include?(search_term) ||
    #           d.city.downcase.include?(search_term) }
    # else
    #   @doctors = Doctor.all
    # end

    @doctors = Doctor.all.where(role: 'doctor')
  end

  private
  def check_if_patient
    if current_user.doctor?
      permission_denied
    end
  end
end
