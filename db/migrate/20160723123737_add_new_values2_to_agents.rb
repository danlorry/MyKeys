class AddNewValues2ToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :days_availability, :string
    add_column :agents, :time_availability, :string
    add_column :agents, :price, :integer
  end
end
