class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  # if user_signed_in?
  # 	@name = current_user.name
  # else
  # 	@name = "New User"
  # end

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up).push :name, :bio
  end
end
