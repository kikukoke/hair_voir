class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.date :date
      t.string :visit_time
      t.string :required_time
      t.string :menu
      t.string :memo
      t.integer :user_id

      t.timestamps
    end
  end
end
