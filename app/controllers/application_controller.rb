class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  # prevent CSRF
  def handle_unverified_request
    sign_out
    super
  end
end
