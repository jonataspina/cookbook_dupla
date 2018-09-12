class RecipesController < ApplicationController
  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end 

  def new
    @recipe = Recipe.new()
  end
  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type, :cuisine, :difficulty, :cook_time, :ingredients, :cook_method)
    new_recipe = Recipe.new(recipe_params)
    if new_recipe.save
      redirect_to recipe_path (new_recipe)
    end
  end
end