class CreateForSaleComics < ActiveRecord::Migration
  def change
    create_table :for_sale_comics do |t|
      t.integer :issue_id
      t.integer :dark_horse_digital_issue_id
      t.timestamps
    end
  end
end
