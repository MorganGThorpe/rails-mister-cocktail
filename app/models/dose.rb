class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :cocktail
  validates :description, presence: true
  validates :cocktail, presence: true, uniqueness: { scope: :ingredient }
end
