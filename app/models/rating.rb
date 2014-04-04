class Rating <ActiveRecord::Base
  validates :recipe_id, :presence => true
  validates :stars, :presence => true
  belongs_to :recipe
end


