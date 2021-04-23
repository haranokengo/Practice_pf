class DropTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :fixedcost_values
    drop_table :income_values
    drop_table :variablecost_values
  end
end
