class Yacht < ApplicationRecord
  belongs_to :user
  belongs_to :port
  has_many :bookings
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :passengers_capacity, presence: true, numericality: { only_integer: true }
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader

  def add_photos(id1, id2, id3)
    url1 = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id1}.jpg"
    url2 = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id2}.jpg"
    url3 = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id3}.jpg"
    self.remote_photo1_url = url1
    self.remote_photo2_url = url2
    self.remote_photo3_url = url3
    self.save
  end
end
