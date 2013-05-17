class CreateFormularies < ActiveRecord::Migration
  def change
    create_table :formularies do |t|
      t.string :name

      t.timestamps
    end
  end
end
