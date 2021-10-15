class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_appointemnts, only: [:index, :show]
  before_action :check_if_patient, only: [:new, :create]
  
  # GET /appointments
  def index
    @appointments
  end

  # GET /appointments/:id
  def show
    @appointment = @appointments.find(params[:id])
  end

  # GET /appointments/new/:doctor_id
  def new
    doctor = Doctor.find(params[:id])
    @appointment = Appointment.new
    @appointment.doctor = doctor
  end

  # POST/appointments/:params
  def create
    @appointment = Patient.find(current_user.id).appointments.build(appointment_params) 
    
    if @appointment.valid?
      @appointment.save
      flash[:success] = "Appointment has been created successfully!"
      redirect_to root_path
    else
      render json: @appointment.errors
    end

  end

  private
    def set_appointemnts
      if current_user.doctor?
        @appointments = Doctor.find(current_user.id).appointments
      else
        @appointments = Patient.find(current_user.id).appointments
      end
    end

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :observations, :appointment_date, images: [])
    end

    def check_if_patient
      if current_user.doctor?
        self.permission_denied
      end
    end
end
