class CreateStaffings < ActiveRecord::Migration
  def change
    create_table :staffings do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.integer :cost_per_hour
      t.references :lawfirm, index: true
      t.references :matter, index: true

      t.timestamps null: false
    end
    add_foreign_key :staffings, :lawfirms
    add_foreign_key :staffings, :matters
  end
end
