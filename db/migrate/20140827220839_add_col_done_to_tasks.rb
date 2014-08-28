class AddColDoneToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :done, :boolean = false
  end
end
