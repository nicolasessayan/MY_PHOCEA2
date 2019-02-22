class RemovePortToYacht < ActiveRecord::Migration[5.2]
  def change
    remove_column :yachts, :port
  end
end
