class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :login, :string 
      t.column :password, :string 
      t.column :email, :string 
    end 
    add_column :tracks, :user_id, :integer 
  end

  def self.down
    drop_table :users
    remove_column :tracks, :user_id
  end
end
