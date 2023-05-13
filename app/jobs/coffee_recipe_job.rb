class CoffeeRecipeJob < ApplicationJob
  queue_as :default

  def perform(coffee_prompt)
    client = OpenAiClient.new
    recipe = client.generate_recipe(coffee_prompt: coffee_prompt)

    coffee_prompt.update!(recipe: recipe)
    
    Turbo::StreamsChannel.broadcast_replace_to coffee_prompt,
      target: "loading",
      partial: 'coffee_prompts/recipe', locals: { recipe: recipe }
  end
end