class Api::V1::RecommendedCollegesController < Api::V1::BaseController
  skip_before_filter :verify_authenticity_token
  
  def index
    @colleges = College.recommended_colleges(params[:act].to_i, params[:in_state].to_i, params[:out_of_state].to_i, params[:affiliation], params[:grad_rate].to_i, params[:enrollment].to_i)

    respond_with @colleges
  end
end
