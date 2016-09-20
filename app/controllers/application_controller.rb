class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  devise_parameter_sanitizer.permit(:account_update) do |user|
    user.permit(:username, :password, :password_confirmation, :current_password)
  end
end
end
