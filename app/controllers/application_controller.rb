class ApplicationController < ActionController::Base
	include GodTime::Api::V1

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
