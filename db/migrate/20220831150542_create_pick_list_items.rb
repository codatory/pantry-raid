class CreatePickListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :pick_list_items do |t|
      t.belongs_to :pick_list, null: false, foreign_key: true
      t.belongs_to :item, null: false, foreign_key: true
      t.text :item_notes

      t.timestamps
    end
  end
end
