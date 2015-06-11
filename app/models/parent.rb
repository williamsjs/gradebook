class Parent < ActiveRecord::Base
  belongs_to :student
  validates :name, :email, :password, :student_id,  presence: true
  has_secure_password
end
