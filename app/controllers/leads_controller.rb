class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  #PUT /leads/:id/update_stage
  def update_stage

  end



  def show
  end

end
