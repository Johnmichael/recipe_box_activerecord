class Ingredient < ActiveRecord::Base
  has_many :rjoins
  has_many :recipes, through: :rjoins
end
