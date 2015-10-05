class CreateGenres < ActiveRecord::Migration
    def self.up
        create_table :genres do |t|
          t.column :name, :string
        end
         
        add_column :track, :genre_id, :integer 
        
        Genre.find(:all).each do |c| 
          c.update_attribute(:genre_id, 4) 
        end 
     end

    def self.down
      drop_table :genres
    end
end
