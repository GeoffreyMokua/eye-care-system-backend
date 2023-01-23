class PatientsController < ApplicationController
     rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    skip_before_action :authorize, only: [:create]
    def create 
    patient = Patient.create!(patient_params)
    token = encode_token({patient_id: patient.id})
    render json: {patient: PatientSerializer.new(patient), jwt: token}, status: :created
    end
    def index 
    patients = Patient.all
    render json: patients, status: :ok
    end
    
    def show
    patient = Patient.find(params[:id])
    render json: patient, status: :ok
    end
    
    private
    def parent_params
    params.permit(:first_name,:last_name,:phone_number,:password, :email, :date_of_birth)
    end
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Patient not Found"}, status: :not_found
    end
end
