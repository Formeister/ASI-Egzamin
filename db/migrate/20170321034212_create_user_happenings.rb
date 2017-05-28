class CreateUserHappenings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_happenings do |t|
      t.integer :year
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
