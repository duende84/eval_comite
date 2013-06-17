class AddNameToEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :name, :string
  end
end
