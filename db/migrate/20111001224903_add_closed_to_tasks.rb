class AddClosedToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :closed, :integer
  end
end
