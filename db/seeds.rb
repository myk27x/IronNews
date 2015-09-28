require 'faker'
require_relative '../ironnews'


# 32.times do
#   Stories.create(title: Faker::Lorem.sentence, link: Faker::Internet.url, email: Faker::Internet.safe_email)
#   sleep 45
# end

# these seeds pay homage to all of the Rails students our TIY staff
Stories.create(title: "Another one bites the dust...", link: "www.queenmusic.com", email: "queenfan@rocker.com")
sleep 30
Stories.create(title: "Black Holes: Friend or Foe?", link: "www.sciencetoday.com", email: "steven.hawking@ghost.com")
sleep 60
Stories.create(title: "Work in Rails and get PAID!", link: "www.yesI.can", email: "codez@18hrs.day")
sleep 15
Stories.create(title: "Just keep swimming: Keeping up in a dev bootcamp", link: "www.keepcoding.away", email: "dunsun@ckdack.bar")
sleep 120
Stories.create(title: "Cooks and Codes", link: "www.eatclickrepeat.com", email: "rubybananas5@eatsleepcode.com")
sleep 10
Stories.create(title: "When you think you can't code, think again.", link: "www.codingbetterthanyouknow.man", email: "green@apple.nice")
sleep 45
Stories.create(title: "It only hurts a little...", link: "www.watchme.poy", email: "smith@spins.wow")
sleep 45
Stories.create(title: "IronPints for less: Kurtis' guide to drinking cheap", link: "www.boozehoundz.gulp", email: "one4@the.road")
sleep 120
Stories.create(title: "Girls *can* code!", link: "www.girlzrockcode.yes", email: "amporto@sharpness.edu")
sleep 45
Stories.create(title: "So much code? CodeGolf FTW!", link: "www.gavinwritescode.gud" , email: "gstarkis@wesome.tru")
sleep 90
Stories.create(title: "Unicorns are sexy like me", link: "www.feenbee.ftw", email: "ohcr@pits.json")
sleep 120
Stories.create(title: "I will get you paid to code!", link: "www.amazingat.net", email: "toniis@maz.ing")
