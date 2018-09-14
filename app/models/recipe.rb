class Recipe < ApplicationRecord
  validates :title, :cuisine, :difficulty, :cook_time, :ingredients, :cook_method,  presence: true
  belongs_to :recipe_type
=begin
    def cook_time_min
    @recipe.cook_time  
  end
=end 

end
