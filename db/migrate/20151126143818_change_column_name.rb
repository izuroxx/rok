class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :text, :login
    
  end
end
