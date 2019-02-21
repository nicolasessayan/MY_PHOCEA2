class AddReferenceToYacht < ActiveRecord::Migration[5.2]
  def change
    add_reference :yachts, :port, foreign_key: true
  end
end
