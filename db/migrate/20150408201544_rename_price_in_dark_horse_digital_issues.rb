class RenamePriceInDarkHorseDigitalIssues < ActiveRecord::Migration
  def change
    rename_column :dark_horse_digital_issues, :price, :price_in_cents
  end
end
