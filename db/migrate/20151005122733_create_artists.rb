class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.binary :picture
      t.string :content_type

      t.timestamps null: false
    end
  end
end
