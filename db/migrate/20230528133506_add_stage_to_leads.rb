class AddStageToLeads < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :stage, :string
  end
end
