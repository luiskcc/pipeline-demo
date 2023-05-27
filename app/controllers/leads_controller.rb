class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def show
  end

end
