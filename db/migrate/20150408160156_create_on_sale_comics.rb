class CreateOnSaleComics < ActiveRecord::Migration
  def change
    create_table :on_sale_comics do |t|
      t.integer :issue_id
      t.integer :vendor_issue_id
      t.string :sale_url
      t.integer :price
      t.timestamps
    end
  end
end
