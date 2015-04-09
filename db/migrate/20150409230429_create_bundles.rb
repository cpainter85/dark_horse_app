class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.integer :volume_id
      t.integer :dark_horse_digital_issue_id
      t.timestamps
    end
  end
end
