class Animal < ApplicationRecord
  has_many :animal_aquariums
  has_many :aquarium, through: :animal_aquariums
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  def self.search(search)
    if search != ""
      Animal.where('name LIKE(?)', "%#{search}%")
    else
      Animal.all
    end
  end

  validates :category_id, numericality: { other_than: 1 , message: "は選択必須です"}
end
