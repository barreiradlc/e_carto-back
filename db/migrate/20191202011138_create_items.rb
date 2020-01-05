class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :nature
      t.float :price

      t.timestamps
    end
  end
end