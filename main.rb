#!/usr/bin/ruby
require 'date'
require 'time'

puts "Welcome in treasure-chest !"

# How long before the trip starts ?
puts "So now tell me when do your trip start ? (use yyyy/mm/dd)"
date1 = gets.to_s
date2 = Date.today.to_s
a = Date.parse(date1)
b = Date.parse(date2)
monthsLeft = (a.mjd - b.mjd)/30

# how much we need and currency
puts "First what is your currency ?"
currency = gets
puts "How much do you wanna save ?"
howMuch = gets.to_i
tripMoneySaving = howMuch / monthsLeft

puts "Okay so you've got " + monthsLeft.to_s + "month(s) to get " + howMuch.to_s + " " + currency + "!"

# calculs
puts "Okay now let's if it's possible or not to save until the : " + date1
# positive
puts "How much do you get paid ?"
paid = gets.to_i
puts "If you got extra money how much ?"
extra = gets.to_i
puts "Some student loan ?"
help = gets.to_i
positive = paid + extra + help
print "In one moth you can gather: " + positive.to_s + " " + currency
# negative
puts "Now let's see the wrong side"
puts "How much is your rent (with electricity etc) ?"
rent = gets.to_i
puts "How much do you use for food ?"
food = gets.to_i
puts "Count all the extras (sports, fun, party)"
extras = gets.to_i

negative = rent + food + extras + tripMoneySaving
rest = positive - negative
# results
print "So in one month remains : " +  rest.to_s + " " + currency + "after saving money has been taken !"
