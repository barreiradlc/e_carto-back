class AddItemsToWiki < ActiveRecord::Migration[6.0]
  def change
    add_column :wikis, :items, :string, :array, :default => []
  end
end
