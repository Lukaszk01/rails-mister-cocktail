class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
  # validates :ingredient, presence: true, uniqueness: true
  validates :description, presence: true
  # validates  uniqueness: { scope: :description }
end
