class Rjoin <ActiveRecord::Base
  belongs_to(:ingredient)
  belongs_to(:recipe)
  belongs_to(:step)
  belongs_to(:tag)
end
