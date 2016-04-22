class AddRerationShipToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :user_id, :integer
    add_column :tasks, :cource_id,:integer
    add_column :tasks, :teacher_id, :integer
  end
end
