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

zero = Point.create!(statpoint: 0)
one = Point.create!(statpoint: 1)
two = Point.create!(statpoint: 2)
three = Point.create!(statpoint: 3)
four = Point.create!(statpoint: 4)
five = Point.create!(statpoint: 5)
six = Point.create!(statpoint: 6)
seven = Point.create!(statpoint: 7)
eight = Point.create!(statpoint: 8)
nine = Point.create!(statpoint: 9)
ten = Point.create!(statpoint: 10)

zero_message = zero.messages.create!(body: "You haven't even started yet? Get going already!", photo_url: 'http://i.dailymail.co.uk/i/pix/2013/09/26/article-2432922-18472EF100000578-249_634x346.jpg')
one_message = one.messages.create!(body: 'Get your shit together, Carol', photo_url: 'https://38.media.tumblr.com/fa86163a0279bd02cf75cca4592896c4/tumblr_mr6s41sG2P1qdp7h2o1_400.gif')
