require 'faker'

def makeuser
  user = User.create!(
    :network_id => rand(1..25),
    :username => Faker::Internet.user_name,
    :password => Faker::Internet.password,
    :email => Faker::Internet.email,
    :fname => Faker::Name.first_name,
    :lname => Faker::Name.last_name,
    :phone => Faker::PhoneNumber.cell_phone,
    :birthdate => Faker::Date.birthday,
    :address => Faker::Address.street_address )
  return user
end

50.times() {makeuser}