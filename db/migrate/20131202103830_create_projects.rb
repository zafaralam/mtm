class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :delivery_date
      t.datetime :completion_date

      # Add fields that automatically keep track of the create
      # and modify of projects
      t.timestamps
    end
  end
end
