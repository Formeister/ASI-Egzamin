class AddDayIdToUserHappenings < ActiveRecord::Migration[5.0]
  def change
    add_column :user_happenings, :day_id, :integer
  end
end
