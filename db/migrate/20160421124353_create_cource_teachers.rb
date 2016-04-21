class CreateCourceTeachers < ActiveRecord::Migration
  def change
    create_table :cource_teachers do |t|
      t.integer :cource_id
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
