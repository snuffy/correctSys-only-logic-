# == Schema Information
#
# Table name: cource_teachers
#
#  id         :integer          not null, primary key
#  cource_id  :integer
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CourceTeacher < ActiveRecord::Base
  belongs_to :cource, class_name: 'Cource', foreign_key: :cource_id
  belongs_to :teacher, class_name: 'Teacher', foreign_key: :teacher_id
end
