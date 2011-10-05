class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :integer, :default => 0
  end
end
