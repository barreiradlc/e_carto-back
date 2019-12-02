class AddStepsToWikis < ActiveRecord::Migration[6.0]
  def change
    add_column :wikis, :steps, :string
  end
end
