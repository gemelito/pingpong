class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configurar_strong_params,  if: :devise_controller?

  private
    def configurar_strong_params
	  	devise_parameter_sanitizer.for(:sign_up) << :name
	  end

end
