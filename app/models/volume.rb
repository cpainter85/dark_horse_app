class Volume < ActiveRecord::Base
  include PgSearch

  multisearchable against: [:name, :description, :start_year, :thumbnail_url]

  validates :comic_vine_volume_id, uniqueness: true
  has_many :issues, dependent: :destroy
  has_many :bundles
  has_many :dark_horse_digital_issues, through: :bundles

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

  def self.fill_single(api_key, volume)
    comic_vine = ComicVineAPI.new
    vol = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]

    vol["start_year"] ? volume.start_year = vol["start_year"].to_i : nil
    vol["description"] ? volume.description = vol["description"] : nil
    vol["image"] ? volume.image_url = vol["image"]["small_url"] : nil
    vol["image"] ? volume.thumbnail_url = vol["image"]["thumb_url"] : nil
    volume.save
  end

  def self.fill_multiple(api_key, volume_array)
    comic_vine = ComicVineAPI.new

    volume_array.each do |volume|
      vol = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]

      vol["start_year"] ? volume.start_year = vol["start_year"].to_i : nil
      vol["description"] ? volume.description = vol["description"] : nil
      vol["image"] ? volume.image_url = vol["image"]["small_url"] : nil
      vol["image"] ? volume.thumbnail_url = vol["image"]["thumb_url"] : nil
      volume.save
    end
  end

  def self.retrieve_issues_if_empty(api_key)
    Volume.all.each do |v|
      if v.issues.empty?
        Issue.get_issues_for_single_volume(api_key, v)
      end
    end
  end

end
