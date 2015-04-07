class RemoveThumbnailFromVolumes < ActiveRecord::Migration
  def change
    remove_column :volumes, :thumbnail
  end
end
