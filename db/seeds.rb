# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Region.destroy_all
Incident.destroy_all
Comment.destroy_all

Region.create([{name: 'North'}, {name: 'South'}, {name: 'East'}, {name: 'West'}])
User.create(username: 'admin', password_digest: BCrypt::Password.create('root'), admin: 'true')
