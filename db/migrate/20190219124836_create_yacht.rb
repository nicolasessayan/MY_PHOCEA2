class CreateYacht < ActiveRecord::Migration[5.2]
  def change
    create_table :yachts do |t|
      t.string      :name
      t.string      :port
      t.integer     :price
      t.integer     :passengers_capacity
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
