class CreateBracelets < ActiveRecord::Migration[6.0]
  def change
    create_table :bracelets do |t|
      t.string :item
      t.string :img_url
      t.string :color
      t.string :material
      t.string :description
      t.integer :value
      t.string :notes

      t.timestamps
    end
  end
end
