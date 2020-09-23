class Pome < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :user
  belongs_to_active_hash :genre

  validates :name,  presence: true
  validates :image, presence: true
  validates :writings, presence: true

  def self.search(search)
    if search != ""
      Pome.where('pome_color LIKE(?)', "%#{search}%")
    else  
      Pome.all
    end
  end
end
