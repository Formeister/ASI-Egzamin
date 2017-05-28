class AddInitialUsers < ActiveRecord::Migration[5.0]
  def up

    User.create!(name:  "Admin",
                 email: "admin@mail.com",
                 password:              "adminpwd",
                 password_confirmation: "adminpwd",
                 admin: true)

    5.times do
      pass = Faker::Internet.password(min_length = 8, max_length = 16)
      User.create(name: Faker::Name.name,
                  email: Faker::Internet.unique.email,
                  password: pass,
                  password_confirmation: pass)
    end
  end

  def down
    User.delete_all
  end
end