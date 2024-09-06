class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :table, null: false, foreign_key: true
      t.datetime :reservation_time
      t.string :guest_name
      t.integer :guest_phone

      t.timestamps
    end
  end
end
