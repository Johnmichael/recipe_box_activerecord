class Recipe < ActiveRecord::Base
  has_many :rjoins
  has_many :tags, through: :rjoins
  has_many :ingredients, through: :rjoins
  has_many :steps, through: :rjoins
end
