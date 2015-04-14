class RemoveUserIdFromComments < ActiveRecord::Migration
  def change
    remove_reference :comments, :user_id, index: true
  end
end
