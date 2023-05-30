class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "phone"
      t.string "country"
      t.string "province"
      t.string "street_address"
      t.string "street_number"
      t.integer "postal_code"
      t.integer "status", default: 0
      t.string "company_name"
      t.string "identity_number"
      t.string "company_email"
      t.string "company_phone"
      t.string "business_area"
      t.string "website"
      t.string "stage", default: "prospecting"
      t.timestamps
    end
  end
end
