class PatientsController < ApplicationController
before_action :authenticate_user!, :check_if_patient, only: [:index]
  
  # GET /directory
  def index
    @doctors = Doctor.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def check_if_patient
      if current_user.doctor?
        self.permission_denied
      end
    end
end
