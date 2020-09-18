class Pome < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :name,  presence: true
  validates :image, presence: true
  validates :writings, presence: true

  def self.search(search)
    if search != ""
      Pome.where('name LIKE(?)', "%#{search}%")
    else  
      Pome.all
    end
  end
end
