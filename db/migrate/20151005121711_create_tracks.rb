class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :artist_id
      t.integer :track_base_id
      t.string :length
      t.date :purchase_date

      t.timestamps null: false
    end
  end
end
