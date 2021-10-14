class AppointmentController < ApplicationController
  before_action :authenticate_user!, :set_appointemnts, only: [:index, :show]
  
  # GET /appointments
  def index
    @appointments
  end

  # GET /appointments/:id
  def show
    @appointment = @appointments.find(params[:id])
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
