class Parent < ActiveRecord::Base
  belongs_to :student
  validates :name, :email, :password, presence: true
  has_secure_password
end
