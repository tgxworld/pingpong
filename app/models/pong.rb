class Pong < ActiveRecord::Base

  has_many :votes
  has_many :rates
  belongs_to :user

  validates :gist, :description, presence: true
  scope :accepted, -> { where(accepted: true).order(rating: :desc) }
  scope :pending, -> { where(accepted: false).order(rating: :desc) }
  scope :from_user, -> (user){ where(user_id: user.id).order(created_at: :desc) }

end
