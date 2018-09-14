class RecipesController < ApplicationController
  def show
    id = params[:id]
    @recipe = Recipe.find(id)
  end 

  def new
    @recipe = Recipe.new()
  end

  def create
    recipe_params = params.require(:recipe).permit(:title, :recipe_type_id, :cuisine, :difficulty, :cook_time, :ingredients, :cook_method)
    new_recipe = Recipe.new(recipe_params)

    if new_recipe.save
      redirect_to recipe_path (new_recipe)
    else
      @recipe = new_recipe
      render "new" 
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe_params = params.require(:recipe).permit(:title, :recipe_type_id, :cuisine, :difficulty, :cook_time, :ingredients, :cook_method, :featured)
    @recipe = Recipe.find(params[:id]) 
    
    if @recipe.update(recipe_params)
      flash[:info] = "Receita marcada como destaque com sucesso!"
      redirect_to @recipe
    else
      render "edit"
    end

  end
end