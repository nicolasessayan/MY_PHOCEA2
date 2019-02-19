class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :passengers_capacity, presence: true, numericality: { only_integer: true }
  # mount_uploader :photo, UserUploader
end
