class AddColumnemailToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :text, :string
  end
end
