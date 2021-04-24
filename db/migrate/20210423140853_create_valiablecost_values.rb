class CreateValiablecostValues < ActiveRecord::Migration[5.2]
  def change
    create_table :valiablecost_values do |t|
      t.integer :valiablecost_id, null: false
      t.integer :value
      t.string :description
      t.date :year_month

      t.timestamps
    end
  end
end
