class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader

  def add_photo(id)
    url = "http://res.cloudinary.com/duasacvax/image/upload/v1550593316/#{id}.jpg"
    self.remote_photo_url = url
    self.save
  end
end
