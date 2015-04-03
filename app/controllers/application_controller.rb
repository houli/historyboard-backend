class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  include ActionController::ImplicitRender
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  rescue_from CanCan::AccessDenied do |exception|
    render json: { error: "Access Denied" }, status: :forbidden
  end

  def root
    render json: { api: "v1" }
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :first_name
      devise_parameter_sanitizer.for(:sign_up) << :last_name
    end
end
