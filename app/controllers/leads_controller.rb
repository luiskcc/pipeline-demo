class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  #PUT /leads/:id/update_stage
  def update_stage
    @lead = Lead.find(params[:id])
    @lead.update_stage_without_creating_new(params[:stage_id])
    render json: {success: true}
  end

  def show
    @lead = Lead.find(params[:id])
  end

end
