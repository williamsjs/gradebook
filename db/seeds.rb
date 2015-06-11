# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

name = Faker::Name.name
email = Faker::Internet.email
number = Faker::Number.number(2)

3.times do
  Teacher.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
end

3.times do
  Student.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", teacher_id: 1)
end

3.times do
  Student.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", teacher_id: 2)
end

3.times do
  Student.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", teacher_id: 3)
end

3.times do
  Parent.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", student_id: 1)
end

3.times do
  Parent.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", student_id: 2)
end

3.times do
  Parent.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password", student_id: 3)
end

3.times do
  Grade.create(value: Faker::Number.number(2), assignment: "blah blah blah", student_id: 1)
end

3.times do
  Grade.create(value: Faker::Number.number(2), assignment: "good work", student_id: 2)
end

3.times do
  Grade.create(value: Faker::Number.number(2), assignment: "not so good", student_id: 3)
end
