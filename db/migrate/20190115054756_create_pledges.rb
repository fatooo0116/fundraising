class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.bigint "user_id"
      t.bigint "project_support_id"
      t.string "project_name"
      t.datetime "issue_date"
      t.integer "status", default: 0, null: false
      t.string "support_name"
      t.integer "support_price"
      t.integer "quantity"
      t.string "merchantOrderNo"

      t.timestamps
    end
  end
end
