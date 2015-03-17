class AddVoteToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :vote_id, :integer
    add_index :posts, :vote_id
  end
end
