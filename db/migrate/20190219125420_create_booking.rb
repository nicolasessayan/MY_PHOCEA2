class CreateBooking < ActiveRecord::Migration[5.2]
  def change
    create_table    :bookings do |t|
      t.date        :start_date
      t.date        :end_date
      t.integer     :agreed_price
      t.references  :user, foreign_key: true
      t.references  :yacht, foreign_key: true
      t.timestamps
    end
  end
end
