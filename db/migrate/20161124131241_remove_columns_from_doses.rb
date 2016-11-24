class RemoveColumnsFromDoses < ActiveRecord::Migration[5.0]
  def change
    remove_column :doses, :cocktail, :string
    remove_column :doses, :ingredient, :string
  end
end
