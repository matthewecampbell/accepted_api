class Api::V1::CollegesController < Api::V1::BaseController
  def index
    @colleges = College.all
  end

  def show
    @college = College.find(params[:id])
  end
end
