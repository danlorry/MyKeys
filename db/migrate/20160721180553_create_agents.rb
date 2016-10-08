class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :about
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
