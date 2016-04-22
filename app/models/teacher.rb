class Teacher < ActiveRecord::Base
  validates :name, presence: true,length:{maximum:10}

  has_many :cource_teachers, class_name:'CourceTeacher', foreign_key: :teacher_id
  has_many :cources, :through => :cource_teachers

  has_many :tasks
end
