class CreateArtists < ActiveRecord::Migration
  	def self.up
	    create_table :artists do |t|
	      t.column :name, :string
	    end
     
    	add_column :track, :artist_id, :integer 
    
	    Artist.find(:all).each do |c| 
	      c.update_attribute(:artist_id, 4) 
	    end 
    end
  
	  def self.down
	    drop_table :artists
	  end
end
