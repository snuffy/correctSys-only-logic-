# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Teacher < ActiveRecord::Base
  validates :name, presence: true,length:{maximum:10}

  has_many :cource_teachers, class_name:'CourceTeacher', foreign_key: :teacher_id
  has_many :cources, :through => :cource_teachers

  has_many :tasks, class_name:'Task', foreign_key: :teacher_id
 
end
