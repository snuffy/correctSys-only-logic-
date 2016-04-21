class CreateUserLessonAttendances < ActiveRecord::Migration
  def change
    create_table :user_lesson_attendances do |t|

      t.timestamps null: false
    end
  end
end
