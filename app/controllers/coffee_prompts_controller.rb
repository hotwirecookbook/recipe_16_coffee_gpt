class CoffeePromptsController < ApplicationController
  def new
    @coffee_prompt = CoffeePrompt.new
  end

  def create
    @coffee_prompt = CoffeePrompt.new(coffee_prompt_params)

    if @coffee_prompt.save
      redirect_to @coffee_prompt
    else
      render :new
    end
  end

  def show
    @coffee_prompt = CoffeePrompt.find(params[:id])
  end

  private

  def coffee_prompt_params
    params.require(:coffee_prompt).permit(:brew_method, :temperature, :roast_level)
  end
end
