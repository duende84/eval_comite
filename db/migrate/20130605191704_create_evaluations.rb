class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.date :date
      t.integer :owner_id
      t.references :evaluation_type
      t.text :notes

      t.timestamps
    end
  end
end
