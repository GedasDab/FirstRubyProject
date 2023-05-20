class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.decimal :price, precision: 2
      t.integer :size
      t.string :brand
      t.string :photo_url
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
