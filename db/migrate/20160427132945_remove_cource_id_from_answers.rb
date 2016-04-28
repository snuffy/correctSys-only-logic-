class RemoveCourceIdFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :cource_id, :integer
  end
end
