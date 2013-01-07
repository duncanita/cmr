# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts  'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First user', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password',
		:surname => 'surname', :piva => '12345'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second user', :email => 'user2@example.com', :password => 'password', :password_confirmation => 'password',
		:surname => 'surname2', :piva => '12345'
puts 'New user created: ' << user2.name
