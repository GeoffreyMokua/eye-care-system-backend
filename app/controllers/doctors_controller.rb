class DoctorsController < ApplicationController
     rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    skip_before_action :authorize, only: [:create, :index, :show]
    def create 
    doctor = Doctor.create!(doctor_params)
    token = encode_token({doctor_id: doctor.id})
    render json: {doctor: DoctorSerializer.new(doctor), jwt: token}, status: :created
    end
    def index 
    doctors = Doctor.all
    render json: doctors, status: :ok
    end
    
    def show
    doctor = Doctor.find(params[:id])
    render json: doctor, status: :ok
    end
    
    private
    def doctor_params
    params.permit(:first_name,:last_name, :password, :email, :date_of_birth, :gender, :img, :specialist, :experience)
    end
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Doctor not Found"}, status: :not_found
    end
end
