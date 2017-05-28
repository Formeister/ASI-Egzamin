class AddInitialDays < ActiveRecord::Migration[5.0]

  def up
    date = Date.new(0004, 01, 01);

    while date <= Date.parse('0004-12-31') do
      Day.create(date: date);
      date = date.tomorrow;
    end

  end

  def down
    Day.delete_all
  end
end
