class AddPhotosToYacht < ActiveRecord::Migration[5.2]
  def change
    rename_column :yachts, :photo, :photo1
    add_column :yachts, :photo2, :string
    add_column :yachts, :photo3, :string
  end
end
