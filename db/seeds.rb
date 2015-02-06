# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Task.delete_all

Task.create!(name: 'Do this Thing', due_by: 'a time', est_time: '1 hour', status: 1)
Task.create!(name: 'Second Assignment', due_by: '4pm', est_time: '10 hour', status: 9)
