class Volume < ActiveRecord::Base
  validates :comic_vine_volume_id, uniqueness: true

# This will get me all the ids and names for volumes for the publisher I pass in
  def self.get_volumes_for_publisher(publisher_comic_vine_id)
    comic_vine = ComicVineAPI.new
    volumes = comic_vine.publisher(publisher_comic_vine_id)["results"]["volumes"]
    volumes.each do |volume|

      v = Volume.new
      v.comic_vine_volume_id = volume["id"]
      v.name = volume["name"]
      v.save
    end
  end
end
