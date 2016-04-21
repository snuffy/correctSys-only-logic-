class CreateCourceUsers < ActiveRecord::Migration
  def change
    create_table :cource_users do |t|

      t.timestamps null: false
    end
  end
end
