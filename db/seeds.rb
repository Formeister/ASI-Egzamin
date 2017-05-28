# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Dates

date = Date.new(0004, 01, 01);

while date <= Date.parse('0004-12-31') do
  Day.create(date: date);
  date = date.tomorrow;
end

# Admin + users + happenings

User.create!(name:  "Admin",
             email: "admin@mail.com",
             password:              "adminpwd",
             password_confirmation: "adminpwd",
             admin: true)

days_amount = Day.count
first_day = Day.first

5.times do

  pass = Faker::Internet.password(min_length = 8, max_length = 16)
  user = User.create(name: Faker::Name.name,
                     email: Faker::Internet.unique.email,
                     password: pass,
                     password_confirmation: pass)


  day_id = first_day[:id]

  days_amount.times do
    day_id += 1
    happenings_amount = Faker::Number.between(4, 8)

    happenings_amount.times do
      user.happenings.create(year: Faker::Number.between(1, 2017), body: Faker::Lorem.sentence, day_id: day_id)
    end
  end

end

# Happenings - Faker

=begin
days_amount = Day.count
first_day = Day.first
current_day_id = first_day[:id]

days_amount.times do
  day = Day.find_by(id: current_day_id)
  current_day_id += 1

  happenings_amount = Faker::Number.between(4, 8)

  happenings_amount.times do
    day.happenings.create(year: Faker::Number.between(1, 2017), body: Faker::Lorem.sentence)
  end
end
=end
