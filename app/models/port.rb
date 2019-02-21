class Port < ApplicationRecord
  has_many :yachts
  mount_uploader :photo, PhotoUploader

  def add_photo(id)
    url = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id}.jpg"
    self.remote_photo_url = url
    self.save
  end
end
