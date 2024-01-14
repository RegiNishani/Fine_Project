class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password_confirmation, :password, :identification_number, :surname, :date_of_birth, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :current_password, :password, :identification_number, :surname, :date_of_birth, :phone_number])
  end
end
