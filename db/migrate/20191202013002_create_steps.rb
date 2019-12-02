class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :order
      t.time :timer
      t.string :title
      t.string :description
      t.boolean :done
      t.references :wiki, null: false, foreign_key: true

      t.timestamps
    end
  end
end
