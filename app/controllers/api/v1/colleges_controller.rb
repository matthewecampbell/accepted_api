class Api::V1::CollegesController < Api::V1::BaseController
  def index
    @colleges = Rails.cache.fetch("colleges") {College.all}

    respond_with @colleges
  end

  def show
    @college = College.find(params[:id])
  end
end
