class CourceUser < ActiveRecord::Base

  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :cource, class_name: 'Cource', foreign_key: :cource_id
end
