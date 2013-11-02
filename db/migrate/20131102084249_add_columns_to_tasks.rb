class AddColumnsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :estimated_hours, :decimal
    add_column :tasks, :actual_hours, :decimal
    add_column :tasks, :completed_date, :datetime
  end
end
