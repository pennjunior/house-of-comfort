class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
