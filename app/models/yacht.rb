class Yacht < ApplicationRecord
  belongs_to :user
  belongs_to :port
  has_many :bookings
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :passengers_capacity, presence: true, numericality: { only_integer: true }
  mount_uploader :photo, PhotoUploader

  def add_photo(id)
    url = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id}.jpg"
    self.remote_photo_url = url
    self.save
  end
end
