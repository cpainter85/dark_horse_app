class AddStartYearToVolumes < ActiveRecord::Migration
  def change
    add_column :volumes, :start_year, :integer
  end
end
