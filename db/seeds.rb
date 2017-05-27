admin = User.create(email: 'admin@sellito.pl', password: 'password')
user = User.create(email: 'test@test.pl', password: 'password')

20.times do |i|
  admin.events.create(title: "Admin event no. #{i}")
  user.events.create(title: "User event no. #{i}")
end
