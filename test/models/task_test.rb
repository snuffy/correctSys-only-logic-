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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
