class Ingredient < ApplicationRecord
  has_many :shops
  has_many :sandwiches, :through => :shops, dependent: :destroy

  validates :name, uniqueness: true
  validates :name, presence: true
end
