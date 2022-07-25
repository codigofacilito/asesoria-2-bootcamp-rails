class AddColumnTotalToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :total, :integer
  end
end
