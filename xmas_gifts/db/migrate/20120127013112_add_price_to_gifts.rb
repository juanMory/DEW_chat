class AddPriceToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :price, :integer, :default =>0, :null=>false
  end
end
