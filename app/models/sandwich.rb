class Sandwich < ApplicationRecord
  has_many :shops
  has_many :ingredients, :through => :shops, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
