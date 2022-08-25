class Animal < ApplicationRecord
  has_many :aquarium, through: :animal_aquariums
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :genre_id, numericality: { other_than: 1 , message: "は選択必須です"}
end
