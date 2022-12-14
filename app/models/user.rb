class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_many :comments
  # has_many :reviews
  # has_many :animals
  # has_many :aquariums

  validates :name,     presence: true
end
