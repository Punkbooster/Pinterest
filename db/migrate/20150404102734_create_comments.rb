class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user_id, index: true
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :comments, :user_ids
  end
end
