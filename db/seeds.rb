=begin
User.destroy_all

require 'faker'


puts "$$$$$$$$$$"
puts "$$ SEED $$"
puts "$$$$$$$$$$"

p "Destroy curent data..."

p "Destroying User... #{User.count} "
User.destroy_all
p "Destroying Gossip... #{Event.count} "
Event.destroy_all
p "-----------------------"

# Creates 10 users with random values 

 10.times do
  User.create(
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    description: Faker::Lorem.sentence(word_count: 50 + rand(200)),
    email: Faker::Internet.unique.email,
    password: "test123!"
  )
end

 Creates 10 events with random values 
10.times do
  Event.create(
   start_date: 
   duration: 
   title:
   description:
   price: 
   location:
  )
end

=end
