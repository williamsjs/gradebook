class Parent < ActiveRecord::Base
  belongs_to :student
  validates :name, :email, :student_id, :password, presence: true
  has_secure_password
end
