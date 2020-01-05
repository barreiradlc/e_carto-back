class AddMaterialsToWiki < ActiveRecord::Migration[6.0]
  def change
    add_column :wikis, :material, :string
  end
end
