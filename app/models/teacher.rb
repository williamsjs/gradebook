class Teacher < ActiveRecord::Base
  has_many :students
  has_many :parents, through: :students
  validates :name, :email, :password, presence: true
  has_secure_password

end
