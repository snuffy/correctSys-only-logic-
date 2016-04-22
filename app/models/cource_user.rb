# == Schema Information
#
# Table name: cource_users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  cource_id  :integer
#

class CourceUser < ActiveRecord::Base

  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :cource, class_name: 'Cource', foreign_key: :cource_id
end
