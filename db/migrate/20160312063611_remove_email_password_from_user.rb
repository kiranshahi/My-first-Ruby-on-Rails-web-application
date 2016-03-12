class RemoveEmailPasswordFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :email
  	remove_column :users, :password
  end
end
