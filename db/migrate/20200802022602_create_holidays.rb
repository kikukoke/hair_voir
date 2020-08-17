class CreateHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :holidays do |t|
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
