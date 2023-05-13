class CreateCoffeePrompts < ActiveRecord::Migration[7.0]
  def change
    create_table :coffee_prompts do |t|
      t.string :brew_method
      t.string :temperature
      t.string :roast_level
      t.text :recipe
      
      t.timestamps
    end
  end
end
