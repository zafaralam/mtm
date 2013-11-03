class AddColumnsToTasks < ActiveRecord::Migration
  def change
    # modify column
    change_column :tasks, :description, :text
    
    # adding new columns
    add_column :tasks, :category, :string
    add_column :tasks, :sub_category, :string
    add_column :tasks, :created_by, :string
    add_column :tasks, :assigned_to, :string
    add_column :tasks, :estimated_hours, :decimal
    add_column :tasks, :actual_hours, :decimal
    add_column :tasks, :completion_date, :datetime
    add_column :tasks, :delivery_date, :datetime
    add_column :tasks, :notes, :text

  end
end
