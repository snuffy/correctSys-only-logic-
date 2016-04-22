# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  teacher    :boolean          default("0")
#  name       :string(255)
#

class User < ActiveRecord::Base
  validates :name, presence: true, length:{maximum:20}

  has_many :cource_users, class_name: 'CourceUser', foreign_key: :user_id
  has_many :cources, :through => :cource_users

  has_many :tasks, class_name:'Task', foreign_key: :user_id
end
