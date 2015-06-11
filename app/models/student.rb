class Student < ActiveRecord::Base
  has_secure_password
  belongs_to :teacher
  has_many :parents
  has_many :grades
  
  validates :name, :email, :teacher_id, :password, presence: true

end
