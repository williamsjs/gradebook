class Grade < ActiveRecord::Base
  belongs_to :student
  validates :assignment, :value, :student_id, presence: true
end
