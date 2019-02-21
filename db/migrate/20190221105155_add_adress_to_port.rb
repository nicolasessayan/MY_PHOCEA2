class AddAdressToPort < ActiveRecord::Migration[5.2]
  def change
    add_column :ports, :address, :string
  end
end
