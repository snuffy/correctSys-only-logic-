class AddColumnToCourceUsers < ActiveRecord::Migration
  def change
    add_column :cource_users, :user_id, :integer
    add_column :cource_users, :cource_id,:integer
  end
end
