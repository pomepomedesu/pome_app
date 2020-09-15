class Pome < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name,  presence: true
  validates :image, presence: true
  validates :writings, presence: true
end
