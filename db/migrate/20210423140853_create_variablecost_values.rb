class CreateVariablecostValues < ActiveRecord::Migration[5.2]
  def change
    create_table :variablecost_values do |t|
      t.integer :variablecost_id, null: false
      t.integer :value
      t.string :description
      t.date :year_month

      t.timestamps
    end
  end
end
