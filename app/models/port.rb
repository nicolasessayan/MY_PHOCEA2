class Port < ApplicationRecord
  has_many :yachts
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def add_photo(id)
    url = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id}.jpg"
    self.remote_photo_url = url
    self.save
  end
end
