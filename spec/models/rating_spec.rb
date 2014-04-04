require 'spec_helper'

describe Rating do
  it { should validate_presence_of :recipe_id }
  it { should validate_presence_of :stars }
  it { should belong_to :recipe }
end
