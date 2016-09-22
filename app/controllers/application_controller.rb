class ApplicationController < ActionController::Api
  protect_from_forgery with: :null_session
  respond_to :html
end
