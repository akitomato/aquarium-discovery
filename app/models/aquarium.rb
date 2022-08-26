class Aquarium < ApplicationRecord
  has_many :animals, through: :animal_aquariums
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  def self.search(search)
    if search != ""
      Aquarium.where('name LIKE(?)', "%#{search}%")
    else
      Aquarium.all
    end
  end

  validates :area_id, numericality: { other_than: 1 , message: "は選択必須です"}
end
