class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before any action performed by the application controller basically any action form the UI at all we need an 
  # authenticated user meaning a signed up user loggin 
end
