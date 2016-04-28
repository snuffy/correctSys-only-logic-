class AddTaskIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :task_id, :integer
  end
end
