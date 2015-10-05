class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :bookmarkable_type
      t.int :bookmarkable_id
      t.int :user_id

      t.timestamps null: false
    end
  end
end
