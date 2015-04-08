class DropOnSaleComics < ActiveRecord::Migration
  def change
    drop_table :on_sale_comics
  end
end
