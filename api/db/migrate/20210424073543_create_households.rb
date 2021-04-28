class CreateHouseholds < ActiveRecord::Migration[6.1]
  def change
    create_table :households do |t|
      t.integer :user_id
      t.integer :money
      t.integer :year_id
      t.integer :month_id
      t.integer :day_id

      t.timestamps
    end
  end
end
