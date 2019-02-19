class AddPhotoToYacht < ActiveRecord::Migration[5.2]
  def change
    add_column :yachts, :photo, :string;
  end
end
