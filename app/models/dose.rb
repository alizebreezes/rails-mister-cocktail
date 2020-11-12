class Dose < ApplicationRecord
  validates :cocktail, uniqueness: { scope: :ingredient }

  belongs_to :cocktail
  belongs_to :ingredient
end
