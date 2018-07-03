class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # Devise
  before_action :authenticate_user!

  # Redirects after successful login
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    render file: "public/404", layout: false, status: 404, formats: [:html]
  end
end
