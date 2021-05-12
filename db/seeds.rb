# coding: utf-8

User.create!( name: "User1",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password")
              
99.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

puts "Users Created"

admin_user = User.first
guest_user = User.find(2)

50.times do |n|
  task_name = "タスク#{n + 1}"
  description = "タスク詳細#{n + 1}"
  admin_user.attendances.create!(name: task_name, description: description)
  guest_user.attendances.create!(name: task_name, description: description)
end

puts "attendances Created"              