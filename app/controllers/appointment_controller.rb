class AppointmentController < ApplicationController
  before_action :authenticate_user!, :set_appointemnts, only: [:index]

  # GET /appointments
  def index
    @appointments
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointemnts
      if current_user.doctor?
        @appointments = Doctor.find(current_user.id).appointments
      else
        @appointments = Patient.find(current_user.id).appointments
      end
    end
end
