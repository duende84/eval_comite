class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :web
      t.string :phone
      t.text :mission
      t.text :vision
      t.text :description
      t.text :objectives
      t.string :image
      t.integer :responsible_id

      t.timestamps
    end
  end
end
