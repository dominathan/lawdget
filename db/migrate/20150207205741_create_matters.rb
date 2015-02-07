class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.integer :fixed_fee
      t.integer :cost
      t.integer :expect_hours
      t.references :lawfirm, index: true

      t.timestamps null: false
    end
    add_foreign_key :matters, :lawfirms
  end
end
