class AddTaskIdToAttachments < ActiveRecord::Migration
  def change
    add_column :attachments, :task_id, :integer
  end
end
