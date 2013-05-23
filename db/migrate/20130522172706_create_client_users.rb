class CreateClientUsers < ActiveRecord::Migration
  def change
    create_table :client_users do |t|
      t.references :user
      t.references :client
      t.references :user_state
      t.date :entailment_date
      t.date :exit_date

      t.timestamps
    end
  end
end
