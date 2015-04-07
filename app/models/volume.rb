class Volume < ActiveRecord::Base
  validates :comic_vine_volume_id, uniqueness: true

# This will get me all the ids and names for volumes for the publisher I pass in
  def self.get_volumes_for_publisher(api_key, publisher_comic_vine_id)
    comic_vine = ComicVineAPI.new
    volumes = comic_vine.publisher(api_key, publisher_comic_vine_id)["results"]["volumes"]
    volumes.each do |volume|

      v = Volume.new
      v.comic_vine_volume_id = volume["id"]
      v.name = volume["name"]
      v.save
    end
  end

  # works for single volume
  # def self.fill(api_key, volume)
  #   comic_vine = ComicVineAPI.new
  #   vol = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]
  #
  #   volume.start_year = vol["start_year"].to_i
  #   volume.description = vol["description"]
  #   volume.image_url = vol["image"]["small_url"]
  #   volume.thumbnail_url = vol["image"]["small_url"]
  #   volume.save
  # end

  def self.fill(api_key, volume_array)
    comic_vine = ComicVineAPI.new

    volume_array.each do |volume|
      vol = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]

      volume.start_year = vol["start_year"].to_i
      volume.description = vol["description"]
      volume.image_url = vol["image"]["small_url"]
      volume.thumbnail_url = vol["image"]["small_url"]
      volume.save
    end
  end

end
