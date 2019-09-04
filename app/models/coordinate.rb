class Coordinate < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader

  # coordinateをいいねする
  def iine(user)
    likes.create(user_id: user.id)
  end

  # coordinateのいいねを解除する
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def iine?(user)
    iine_users.include?(user)
  end
end
