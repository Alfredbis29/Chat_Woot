module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from StandardError, with: :handle_standard_error
    rescue_from ActiveRecord::RecordInvalid, with: :handle_validation_error
    rescue_from ArgumentError, with: :handle_argument_error
  end

  private

  def handle_standard_error(exception)
    Rails.logger.error("Unhandled Exception: #{exception.class} - #{exception.message}")
    Rails.logger.error(exception.backtrace.join("\n")) if Rails.env.development?
    
    render json: {
      error: "An unexpected error occurred",
      status: 500
    }, status: :internal_server_error
  end

  def handle_validation_error(exception)
    Rails.logger.warn("Validation Error: #{exception.record.errors.full_messages}")
    
    render json: {
      error: "Validation failed",
      details: exception.record.errors.full_messages,
      status: 422
    }, status: :unprocessable_entity
  end

  def handle_argument_error(exception)
    Rails.logger.warn("Argument Error: #{exception.message}")
    
    render json: {
      error: "Invalid argument provided",
      status: 400
    }, status: :bad_request
  end
end
