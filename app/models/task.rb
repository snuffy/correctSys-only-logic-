# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  cource_id  :integer
#  teacher_id :integer
#  name       :string(255)
#  content    :string(255)
#

class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :cource, class_name: 'Cource',foreign_key: :cource_id
  belongs_to :teacher, class_name: 'Teacher', foreign_key: :teacher_id
end
