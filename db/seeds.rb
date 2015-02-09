# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Task.delete_all

Task.create!(name: 'Do this Thing', due_by: 'a time', est_time: '1 hour')
Task.create!(name: 'Second Assignment', due_by: '4pm', est_time: '10 hrs')

Point.delete_all

Point.create!(statpoint: 0)
Point.create!(statpoint: 1)
Point.create!(statpoint: 2)
Point.create!(statpoint: 3)
Point.create!(statpoint: 4)
Point.create!(statpoint: 5)
Point.create!(statpoint: 6)
Point.create!(statpoint: 7)
Point.create!(statpoint: 8)
Point.create!(statpoint: 9)
Point.create!(statpoint: 10)
