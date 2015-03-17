class AddVoteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vote_id, :integer
    add_index :users, :vote_id
  end
end
