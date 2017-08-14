1.times do |user|
  User.create!(first_name: "Cassidy", last_name: "Hales", email: "myemail@email.com", password: "asdfasdf", password_confirmation: "asdfasdf")
end

puts "1 user created"

100.times do |post|
	Post.create!(date: Date.today, rational: "#{post} rational content", user: User.first)
end

puts "100 Posts have been created"