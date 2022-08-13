class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.references :sandwich, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
