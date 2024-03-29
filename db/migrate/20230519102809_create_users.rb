class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.index :name, unique: true
      t.index :email, unique: true

      t.timestamps
    end
  end
end
