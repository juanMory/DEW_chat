class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :type
      t.text :description
      t.integer :tarifa

      t.timestamps
    end
  end
end
