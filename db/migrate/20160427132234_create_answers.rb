class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :cource_id
      t.integer :teacher_id
      t.string :name
      t.string :content

      t.timestamps null: false
    end
  end
end
