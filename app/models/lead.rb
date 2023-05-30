class Lead < ApplicationRecord

  def update_stage_without_creating_new(new_stage)
    self.update_columns(stage: new_stage)
  end

end
