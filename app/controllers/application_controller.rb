class ApplicationController < ActionController::API
  include ActionController::ImplicitRender

  def root
    render json: { api: "v1" }
  end
end
