class CreateBeverages < ActiveRecord::Migration[5.2]
  def change
    create_table :beverages do |t|
      t.string :title
      t.integer :beverage_type

      t.timestamps
    end
  end
end
