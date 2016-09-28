class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :resource_name, :resource, :devise_mapping
  after_filter :store_location


  protected

	def store_location
  # store last url as long as it isn't a /users path
  session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
	end

	def after_sign_in_path_for(resource)
	  session[:previous_url] || root_path
	end

	def configure_permitted_parameters
   	  devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)}
  	end

	def update_sanitized_params
	  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)}
	end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
