class Building < ActiveRecord::Base
  has_and_belongs_to_many :renters
  validates :address, :move_in, :move_out, presence: true
  validate :end_after_start
  mount_uploader :image, BuildingImageUploader


  def end_after_start
    if move_out.present? && move_in.present? && move_out < move_in
      errors.add(:move_out, "date can't be in the past")
    end
 end

end
