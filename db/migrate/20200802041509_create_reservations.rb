class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :s_time
      t.string :f_time
      t.string :name
      t.string :menu
      t.string :memo
      t.integer :user_id

      t.timestamps
    end
  end
end
