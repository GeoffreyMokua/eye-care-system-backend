class ServicesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_message
    skip_before_action :authorize, only: [:create, :index, :show]
    def create 
    service = Service.create!(service_params)
    token = encode_token({service_id: service.id})
    render json: {patient: ServiceSerializer.new(patient), jwt: token}, status: :created
    end
    def index 
    services = Service.all
    render json: services, status: :ok
    end
    
    def show
    service = Patient.find(params[:id])
    render json: service, status: :ok
    end
    
    private
    def parent_params
    params.permit(:name,:img,:description,:doctor_id, :cost)
    end
    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def not_found_message
        render json: {error: "Service not Found"}, status: :not_found
    end
end
