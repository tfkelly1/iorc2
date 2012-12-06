# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
if Role.count == 0
Role.create([
  { :name => 'admin' }, 
  { :name => 'recordsSecretary' }, 
  { :name => 'recordsCommittee' },
  { :name => 'dataEntry'},
  { :name => 'seasonalEditor'},
  { :name => 'emeritus'}
], :without_protection => true)
end

puts 'CREATING USERS'

user = User.find_or_create_by_name! :name => 'admin1', :email => 'admin1@admin.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
role = Role.find_by_name("admin")
user.role_ids = [role.id]
