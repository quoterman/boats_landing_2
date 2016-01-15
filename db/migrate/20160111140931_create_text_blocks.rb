class CreateTextBlocks < ActiveRecord::Migration
  def change
    create_table :text_blocks do |t|
      t.string :text, null: false
      t.boolean :visible, null: false, default: false

      t.timestamps null: false
    end
  end
end
