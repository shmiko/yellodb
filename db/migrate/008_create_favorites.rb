class CreateFavorites < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
    end
  end

  def self.down
    drop_table :favorites
  end
end
