# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # Roles table data details
Role.create(name: "super_admin")
Role.create(name: "admin")
Role.create(name: "buyer")
Role.create(name: "seller")
Role.create(name: "franchise")