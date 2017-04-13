class Ingredient < ApplicationRecord

  has_many :doses, through: :cocktails
  validates :name, uniqueness:true, presence: true


end


