class CreateComponentTypes < ActiveRecord::Migration
  def change
    create_table :component_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
