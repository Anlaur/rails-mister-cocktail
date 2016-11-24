class AddNameToDoses < ActiveRecord::Migration[5.0]
  def change
    add_column :doses, :cocktail, :string
    add_column :doses, :ingredient, :string
    add_column :doses, :description, :string
  end
end
