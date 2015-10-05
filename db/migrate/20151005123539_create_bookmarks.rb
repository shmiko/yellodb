class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :bookmarkable_type
      t.integer :bookmarkable_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
