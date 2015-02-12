Task.destroy_all
Point.destroy_all
Gmessage.destroy_all
Bmessage.destroy_all

Task.create!(name: 'Do this Thing', due_by: 'a time', est_time: '1 hour')
Task.create!(name: 'Second Assignment', due_by: '4pm', est_time: '10 hrs')

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

# Bad MEssage Seeds
message0 = Bmessage.create!(body: "You haven't even started yet? Get going already!", photo_url: 'http://i.dailymail.co.uk/i/pix/2013/09/26/article-2432922-18472EF100000578-249_634x346.jpg')
zero.bmessage = message0

message1 = Bmessage.create!(body: 'Get your shit together, Carol', photo_url: 'https://38.media.tumblr.com/fa86163a0279bd02cf75cca4592896c4/tumblr_mr6s41sG2P1qdp7h2o1_400.gif')
one.bmessage = message1

message2 = Bmessage.create!(body:"Congratulations, you've dissapointed Oprah", photo_url: 'https://38.media.tumblr.com/ba00108c173aa6b7c34b2a0a1454c5ce/tumblr_n2k0k77Jlp1r5spg1o1_400.gif')
two.bmessage = message2

message3 = Bmessage.create!(body: "I can't even look at you right now. #dissapointed", photo_url: 'http://s3-ec.buzzfed.com/static/enhanced/web05/2012/2/21/16/enhanced-buzz-wide-6411-1329859394-2.jpg')
three.bmessage = message3

message4 = Bmessage.create!(body:"Come on. You're making the MBTA look good.", photo_url: 'http://media.giphy.com/media/pdtaN3WCeipkQ/giphy.gif')
four.bmessage = message4

message5 = Bmessage.create!(body:"You're halfway there! ...That's it?", photo_url: 'http://i.imgur.com/4KBJljF.png')
five.bmessage = message5

message6 = Bmessage.create!(body:'Get off the internet and do your damn work. Go. Now.', photo_url: 'http://cdn.grumpycats.com/wp-content/uploads/2013/01/Grumpy-Cat-01.jpg')
six.bmessage = message6

message7 = Bmessage.create!(body:"This is almost a good look. Just like you're almost done.", photo_url: 'http://31.media.tumblr.com/fc6a33afa5bd358274891d1cfae8d40a/tumblr_ncsqt3r5GZ1qecufho1_500.jpg')
seven.bmessage = message7

message8 = Bmessage.create!(body:'Tick tock...', photo_url: 'http://s3-ec.buzzfed.com/static/2013-12/enhanced/webdr02/9/21/anigif_enhanced-buzz-17874-1386641829-6.gif')
eight.bmessage = message8

message9 = Bmessage.create!(body:"So close... yet somehow you're still not done yet?", photo_url: 'https://31.media.tumblr.com/ac39b784ca5278a8eb7317369a5bfbed/tumblr_inline_n3nadtr7qv1qbygev.gif')
nine.bmessage = message9

message10 = Bmessage.create!(body:"Congratulations, you're done! Took you long enough... Time for a drink amiright?", photo_url: 'http://s3-ec.buzzfed.com/static/2013-12/enhanced/webdr06/9/21/anigif_enhanced-buzz-1768-1386643013-4.gif')
ten.bmessage = message10


# Good Message Seeds

goodmessage0 = Gmessage.create!(body: "Ground zero. Time to crush it!", photo_url: '')
zero.gmessage = goodmessage0

goodmessage1 = Gmessage.create!(body: "Yes.", photo_url: 'http://trendingcurrentevents.com/wp-content/uploads/2014/12/ur-beautiful-and-youre-going-to-do-great-this-year.png')
zero.gmessage = goodmessage1

goodmessage2 = Gmessage.create!(body: "Ya I feel you.", photo_url: 'http://s3-ec.buzzfed.com/static/2014-12/19/16/enhanced/webdr11/enhanced-2193-1419025092-13.png')
zero.gmessage = goodmessage2

goodmessage3 = Gmessage.create!(body: "If you're feeling stupid just remember that 27% of people think a gigabyte is an insect found in South America...", photo_url: 'http://s3-ec.buzzfed.com/static/2014-09/15/11/enhanced/webdr11/anigif_enhanced-2478-1410795167-3.gif')
zero.gmessage = goodmessage3

goodmessage4 = Gmessage.create!(body: "I'll just leave this here.", photo_url: 'http://s3-ec.buzzfed.com/static/2015-02/10/12/enhanced/webdr11/enhanced-9016-1423588068-1.jpg')
zero.gmessage = goodmessage4

goodmessage5 = Gmessage.create!(body: "Halfway there! You got this.", photo_url: 'http://s3-ec.buzzfed.com/static/2015-02/11/15/enhanced/webdr11/original-5339-1423687246-32.jpg')
zero.gmessage = goodmessage5

goodmessage6 = Gmessage.create!(body: "He believes in you.", photo_url: 'https://lh5.ggpht.com/cb7PU-mvWE1_JxMlpQwyNfMk7yL9kUByZj3bS2YLcPkLor8V6RfkwMzt76_BsZaz0rad=h900')
zero.gmessage = goodmessage6

goodmessage7 = Gmessage.create!(body: "Keep going!", photo_url: 'http://i.imgur.com/fXIfJSo.jpg')
zero.gmessage = goodmessage7

goodmessage8 = Gmessage.create!(body: "Just a little bit left to go!", photo_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRfo4MPqTIXDpjQnLFZuFF7QIC-vbHCAEoa6spuvGTQ9UcbfCn3hw')
zero.gmessage = goodmessage8

goodmessage9 = Gmessage.create!(body: "You're so close...", photo_url: 'http://www.worldlifestyle.com/wp-content/uploads/2014/11/tumblr_n7hjdyIWgF1r5c8qzo1_500.gif')
zero.gmessage = goodmessage9

goodmessage10 = Gmessage.create!(body: "You're done!", photo_url: 'http://media.giphy.com/media/XgWZpm5U6Jdzq/giphy.gif')
zero.gmessage = goodmessage10
