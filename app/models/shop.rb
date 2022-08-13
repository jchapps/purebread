class Shop < ApplicationRecord
  belongs_to :sandwich
  belongs_to :ingredient

  validates :ingredient_id, presence: true, uniqueness: { scope: :sandwich_id }
end
