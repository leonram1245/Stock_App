Role.create!(name: 'admin')
Role.create!(name: 'broker')
Role.create!(name: 'buyer')
user = User.create! :email => 'amount125151@gmail.com', :password => 'secrets', :password_confirmation => 'secrets'
user.add_role :admin
user.add_role :broker