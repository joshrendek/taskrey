class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :subject
      t.text :description
      t.date :due_date
      t.integer :author_id
      t.integer :assigned_to_id

      t.timestamps
    end
  end
end
