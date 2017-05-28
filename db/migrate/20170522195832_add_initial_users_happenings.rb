class AddInitialUsersHappenings < ActiveRecord::Migration[5.0]
  def up

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
  end

  def down
    User.delete_all
  end
end
