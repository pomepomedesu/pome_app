class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :name
    validates :genre_id,  numericality: { other_than: 0 }
    validates :a_word
  end

  has_many :pomes
end
