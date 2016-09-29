class AddUserIdToDrops < ActiveRecord::Migration
  def change
    add_column :drops, :user_id, :integer
  end
end
