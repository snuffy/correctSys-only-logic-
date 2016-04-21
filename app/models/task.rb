class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :cource
  belongs_to :teacher
end
