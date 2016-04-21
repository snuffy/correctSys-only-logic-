class AddDescriptionToCource < ActiveRecord::Migration
  def change
    add_column :cources, :description,:string
  end
end
