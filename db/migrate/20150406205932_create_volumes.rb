class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :name
      t.integer :comic_vine_volume_id
      t.text :description
      t.text :image_url
      t.text :thumbnail_url
      t.timestamps
    end
  end
end
