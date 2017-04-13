class Dose < ApplicationRecord

  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true

  validates :ingredient_id, uniqueness: {scope: :cocktail_id}

 # description cannot be blank (FAILED - 12)
 #  belongs to a cocktail (FAILED - 13)
 #  belongs to an ingredient (FAILED - 14)
 #  cocktail cannot be blank (FAILED - 15)
 #  ingredient cannot be blank (FAILED - 16)
 #  is unique for a given cocktail/ingredient couple (FAILED - 17)

end
