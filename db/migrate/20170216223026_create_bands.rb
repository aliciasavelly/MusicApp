class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :bands, :name, unique: true
  end
end
