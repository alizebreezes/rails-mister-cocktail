class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.string :cocktail
      t.string :ingredient
      t.references :cocktail, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
