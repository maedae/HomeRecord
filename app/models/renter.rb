class Renter < ActiveRecord::Base
  has_and_belongs_to_many :buildings
  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, presence: true
  mount_uploader :image, RenterImageUploader
end
