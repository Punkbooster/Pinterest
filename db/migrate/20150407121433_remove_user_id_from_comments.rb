class RemoveUserIdFromComments < ActiveRecord::Migration
  def change
    remove_reference :comments, :user_id, index: true
    remove_foreign_key :comments, :user_ids
  end
end
