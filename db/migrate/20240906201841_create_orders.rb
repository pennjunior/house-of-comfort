class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :table, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :guest_name
      t.string :guest_mobile
      t.string :guest_address
      t.string :status

      t.timestamps
    end
  end
end
