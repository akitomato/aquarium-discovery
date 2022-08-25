class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'イルカ' },
    { id: 3, name: 'サメ' },
    { id: 4, name: 'カメ' },
    { id: 5, name: 'カニ' },
    { id: 6, name: 'エビ' },
    { id: 7, name: 'イカ' },
    { id: 8, name: 'タコ' },
    { id: 9, name: 'ヒトデ' },
    { id: 10, name: 'エイ' }
  ]

  include ActiveHash::Associations
  has_many :animals
  end