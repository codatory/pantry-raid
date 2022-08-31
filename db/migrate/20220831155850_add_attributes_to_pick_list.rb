class AddAttributesToPickList < ActiveRecord::Migration[7.0]
  def change
    add_column :pick_lists, :picked, :boolean
    add_column :pick_lists, :closed, :boolean
  end
end
