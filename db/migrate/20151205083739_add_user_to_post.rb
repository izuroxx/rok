class AddUserToPost < ActiveRecord::Migration
  def change
    add_column :posts, :Post, :string
    add_reference :posts, :user, index: true, foreign_key: true
  end
end
