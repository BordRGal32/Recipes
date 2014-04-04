class CreateRecipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :directions
      t.integer :stars

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps
    end

    create_table :recipe_tags do |t|
      t.integer :tag_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
