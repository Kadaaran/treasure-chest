#!/usr/bin/ruby
require 'date'
require 'time'

puts "Welcome in treasure-chest !"

# How long before the trip starts ?
puts "So now tell me, when does your trip start 🚁 ? (use yyyy/mm/dd)"
date1 = gets.to_s
date2 = Date.today.to_s
if date1 < date2
  puts "Did you try to go to the past 😱?"
  exit;
end
a = Date.parse(date1)
b = Date.parse(date2)
monthsLeft = (a.mjd - b.mjd)/30

# how much we need and currency
puts "What is your currency 💵?"
currency = gets
puts "How much do you wanna save ?"
howMuch = gets.to_i
tripMoneySaving = howMuch / monthsLeft

puts "So you've got " + monthsLeft.to_s + "month(s) to get " + howMuch.to_s + " " + currency + "😤 !"

# calculs
puts "Okay, now let's see if it's possible or not for you to save that muchh until the : " + date1
# positive
puts "How much do you get paid 💵?"
paid = gets.to_i
puts "If you got extra money how much ?"
extra = gets.to_i
puts "Some government's help ?"
help = gets.to_i
positive = paid + extra + help
print "In one month you can gather: " + positive.to_s + " " + currency + "👍!"
# negative
puts "Now let's go on the dark side ... "
puts "How much is your rent (with electricity etc) 💡?"
rent = gets.to_i
puts "How much do you use for food (be honest!) 🍱🍕🍺?"
food = gets.to_i
puts "Count all the extras (sports, fun, party, pokemons ...)"
extras = gets.to_i

negative = rent + food + extras + tripMoneySaving
rest = positive - negative
# results
print "So you have to save " + tripMoneySaving.to_s + " " + currency + " per month and " + rest.to_s + " " + currency + " remains after your trip-saved-money has been taken ! 🎉🎉"
