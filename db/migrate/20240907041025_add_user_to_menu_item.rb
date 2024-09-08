class AddUserToMenuItem < ActiveRecord::Migration[7.1]
  def change
    add_reference :menu_items, :user, null: false, foreign_key: true
  end
end
