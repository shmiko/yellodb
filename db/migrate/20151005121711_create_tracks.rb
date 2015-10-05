class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.int :artist_id
      t.int :track_base_id
      t.string :length
      t.date :purchase_date

      t.timestamps null: false
    end
  end
end
