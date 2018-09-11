class HomeController < ApplicationController 
  def main
    @recipes = Recipe.all
  end
end