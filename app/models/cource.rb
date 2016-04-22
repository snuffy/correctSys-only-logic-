class Cource < ActiveRecord::Base
  validates :name, length:{maximum: 10}, presence: true

  has_many :cource_users, class_name: 'cource_user', foreign_key: :cource_id
  has_many :users, :through =>  :cource_users

  has_many :cource_teachers, class_name: 'cource_teacher', foreign_key: :cource_id
  has_many :teachers, :through =>  :cource_teachers

  has_many :tasks
end
