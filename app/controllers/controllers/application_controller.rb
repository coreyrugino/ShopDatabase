class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    # binding.pry
    render file: "public/blocked", layout: false, status: 404, formats: [:html]
    # render file: "public/404", layout: false, status: 404, formats: [:html]
    # redirect_to root_path, :method => :get, :alert => exception.message
  end
  # Redirects after successful login
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end
end
