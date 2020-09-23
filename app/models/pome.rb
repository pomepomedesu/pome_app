class Pome < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :user
  belongs_to_active_hash :genre

  validates :name,  presence: true
  validates :image, presence: true
  validates :writings, presence: true
  validates :color_pome, presence: true
  def self.search(search)
    if search != ""
      Pome.where('color_pome LIKE(?)', "%#{search}%")
    else  
      Pome.all
    end
  end
end
