class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :album_id, null: false
      t.integer :ord, null: false
      t.string :track_type, null: false
      t.string :lyrics

      t.timestamps null: false
    end
    add_index :tracks, :ord, unique: true
  end
end
