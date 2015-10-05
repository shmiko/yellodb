class AddCounterCacheToTracks < ActiveRecord::Migration
  def self.up
    add_column :tracks, :votes_count, :integer, :default => 0
    Track.find(:all).each do |s|
    s.update_attribute :votes_count, s.votes.length
    end
  end

  def self.down
    remove_column :tracks, :votes_count
  end
end
