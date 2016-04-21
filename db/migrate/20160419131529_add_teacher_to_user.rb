class AddTeacherToUser < ActiveRecord::Migration
  def change
    add_column :users, :teacher, :bool, default: false
  end
end
