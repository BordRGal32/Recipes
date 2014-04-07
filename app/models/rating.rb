
class Rating <ActiveRecord::Base
  validates :recipe_id, :presence => true
  validates :stars, :presence => true
  belongs_to :recipe

  def self.average_stars
    sum = 0
    Rating.all.each do |rating|

        sum += rating.stars
    end
    sum/Rating.all.length
  end
end


