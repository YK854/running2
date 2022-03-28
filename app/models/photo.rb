class Photo < ApplicationRecord
  attachment :image
  belongs_to :user
  has_many :coms, dependent: :destroy
  has_many :iines, dependent: :destroy

  def iine_by?(user)
    iines.where(user_id: user.id).exists?
  end

end
