class CreateDarkHorseDigitalIssues < ActiveRecord::Migration
  def change
    create_table :dark_horse_digital_issues do |t|
      t.string :title
      t.integer :price
      t.integer :dhd_id
      t.timestamps
    end
  end
end
