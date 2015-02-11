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
one = Point.create!(statpoint: 10)
two = Point.create!(statpoint: 20)
three = Point.create!(statpoint: 30)
four = Point.create!(statpoint: 40)
five = Point.create!(statpoint: 50)
six = Point.create!(statpoint: 60)
seven = Point.create!(statpoint: 70)
eight = Point.create!(statpoint: 80)
nine = Point.create!(statpoint: 90)
ten = Point.create!(statpoint: 100)

zero_message = zero.messages.create!(body: "You haven't even started yet? Get going already!", photo_url: 'http://i.dailymail.co.uk/i/pix/2013/09/26/article-2432922-18472EF100000578-249_634x346.jpg')
one_message = one.messages.create!(body: 'Get your shit together, Carol', photo_url: 'https://38.media.tumblr.com/fa86163a0279bd02cf75cca4592896c4/tumblr_mr6s41sG2P1qdp7h2o1_400.gif')
two_message = two.messages.create!(body:"Congratulations, you've dissapointed Oprah", photo_url: 'https://38.media.tumblr.com/ba00108c173aa6b7c34b2a0a1454c5ce/tumblr_n2k0k77Jlp1r5spg1o1_400.gif')
three_message = two.messages.create!(body: "So what you're saying is... you've basically done nothing. Go! Do it! Now!", photo_url: '')
four_message = two.messages.create!(body:'You make the MBTA look like', photo_url: '')
five_message = two.messages.create!(body:"You're halfway there! ...That's it?", photo_url: '')
six_message = two.messages.create!(body:'Get off the internet and do your damn work. Go. Now.', photo_url: '')
seven_message = two.messages.create!(body:"This is almost a good look. Just like you're almost done", photo_url: 'https://pbs.twimg.com/media/B3yd_TRCUAAU7qG.jpg:large')
eight_message = two.messages.create!(body:'Tick tock...', photo_url: 'http://s3-ec.buzzfed.com/static/2013-12/enhanced/webdr02/9/21/anigif_enhanced-buzz-17874-1386641829-6.gif')
nine_message = two.messages.create!(body:"So close... yet somehow you're still not done yet?", photo_url: '')
ten_message = two.messages.create!(body:"Congratulations, you're done! Took you long enough... Time for a drink amiright?", photo_url: 'http://s3-ec.buzzfed.com/static/2013-12/enhanced/webdr06/9/21/anigif_enhanced-buzz-1768-1386643013-4.gif')
