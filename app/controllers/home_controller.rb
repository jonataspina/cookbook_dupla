class HomeController < ApplicationController 
  def main
    #@recipes = Recipe.all
    @featured_recipes = Recipe.where(featured:true)

    @another_recipes = Recipe.where(featured:false)
  end
end