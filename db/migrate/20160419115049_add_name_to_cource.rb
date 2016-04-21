class AddNameToCource < ActiveRecord::Migration
  def change
    add_column :cources, :name, :string
  end
end
