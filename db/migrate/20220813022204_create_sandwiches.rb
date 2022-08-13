class CreateSandwiches < ActiveRecord::Migration[7.0]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.string :image_url
      t.boolean :vegetarian, default: false

      t.timestamps
    end
  end
end
