class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  has_and_belongs_to_many :tags
  has_many :ratings
  def ingredients_array

  end
end
