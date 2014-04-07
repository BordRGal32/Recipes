require 'spec_helper'

describe Rating do
  it { should validate_presence_of :recipe_id }
  it { should validate_presence_of :stars }
  it { should belong_to :recipe }

  describe '.average_stars' do
    it 'should return the average of all the stars' do
        r = Rating.create({:stars => 1, :recipe_id => 2 })
        r2 = Rating.create({:stars => 3, :recipe_id => 2 })
        Rating.average_stars.should eq 2
    end
  end
end
