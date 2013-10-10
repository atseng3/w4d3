# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(:name => "Jeff", :email => "jrosen3@gmail.com")

User.create!(:name => "Albert", :email => "atseng3@gmail.com")

Contact.create!(:name => "Albert", :email => "atseng3@gmail.com", :user_id => 1)
Contact.create!(:name => "CJ", :email => "cj@appacademy.io", :user_id => 1)
Contact.create!(:name => "Varun", :email => "shots@gmail.com", :user_id => 2)

ContactShare.create!(:user_id => 2, :contact_id => 2)
ContactShare.create!(:user_id => 1, :contact_id => 3)

