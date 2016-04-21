class User < ActiveRecord::Base
  validates :name, presence: true, length:{maximum:20}

  has_many :cource_users, class_name: 'CourceUser', foreign_key: :user_id
  has_many :cources, :through => :cource_users
end
