class RemoveQuantityFromMenuItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :menu_items, :quantity, :integer
  end
end
