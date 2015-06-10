class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :grades
  validates :name, :email, :teacher_id, :password, presence: true
  has_secure_password

end
