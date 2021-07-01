class Changecategory < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :category, :string
  end
end
