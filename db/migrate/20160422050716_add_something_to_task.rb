class AddSomethingToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :name,:string
    add_column :tasks, :content,:string
  end
end
