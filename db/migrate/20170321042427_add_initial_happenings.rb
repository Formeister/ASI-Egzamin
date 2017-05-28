class AddInitialHappenings < ActiveRecord::Migration[5.0]
    def up
      days_amount = Day.count
      first_day = Day.first
      first_day_id = first_day[:id]

      days_amount.times do
        day = Day.find_by(id: first_day_id)
        first_day_id += 1
        happenings_amount = Faker::Number.between(4, 8)

        happenings_amount.times do
          day.happenings.create(year: Faker::Number.between(1, 2017), body: Faker::Lorem.sentence)
        end
      end
    end

    def down
      Happening.delete_all
    end
  end