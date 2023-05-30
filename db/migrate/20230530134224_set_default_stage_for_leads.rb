class SetDefaultStageForLeads < ActiveRecord::Migration[7.0]
  def change
    def up
      change_column :leads, :stage, :string, default: "prospecting"
    end

    def down
      change_column :leads, :stage, :string, default: nil
    end
  end
end
