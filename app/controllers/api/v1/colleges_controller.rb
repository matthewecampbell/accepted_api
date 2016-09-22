class Api::V1::CollegesController < Api::V1::BaseController
  skip_before_filter :verify_authenticity_token
  
  def index
    @colleges = Rails.cache.fetch("colleges") {College.all}

    respond_with @colleges
  end

  def show
    @college = College.find(params[:id])
  end
end
