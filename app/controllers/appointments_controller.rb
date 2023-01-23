class AppointmentsController < ApplicationController
     rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    skip_before_action :authorize, only: [:create]
    def create 
    appointment = Appointment.create!(appointment_params)
    token = encode_token({appointment_id: appointment.id})
    render json: {appointment: AppointmentSerializer.new(appointment), jwt: token}, status: :created
    end
    def index 
    appointments = Appointment.all
    render json: appointments, status: :ok
    end
    
    def show
    appointment = Appointment.find(params[:id])
    render json: appointment, status: :ok
    end
    
    private
    def parent_params
    params.permit(:patient_id,:age,:gender,:date, :time, :doctor_id)
    end
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Appointment not Found"}, status: :not_found
    end
end
