class ChangeRecipeFeaturedDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :recipes, :featured, false
  end
end
