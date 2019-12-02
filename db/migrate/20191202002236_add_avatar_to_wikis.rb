class AddAvatarToWikis < ActiveRecord::Migration[6.0]
  def change
    add_column :wikis, :avatar, :string
  end
end
