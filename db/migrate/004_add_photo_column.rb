class AddPhotoColumn < ActiveRecord::Migration
  def self.up
    add_column :tracks, :content_type, :string,:default => "image/png"
    execute 'ALTER TABLE tracks ADD COLUMN picture LONGBLOB'
    
    #add_column :artists, :content_type, :string,:default => "image/png"
   # execute 'ALTER TABLE artists ADD COLUMN picture LONGBLOB'
  end

  def self.down
    remove_column :tracks, :content_type
    remove_column :tracks, :picture
    
    #remove_column :artists, :content_type
    #remove_column :artists, :picture
  end
end
