class CourceTeacher < ActiveRecord::Base
  belongs_to :cource, class_name: 'Cource', foreign_key: :cource_id
  belongs_to :teacher, class_name: 'Teacher', foreign_key: :teacher_id
end
