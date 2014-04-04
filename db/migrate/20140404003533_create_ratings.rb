class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.string :review
      t.integer :recipe_id
      t.timestamp
    end
  end
end
