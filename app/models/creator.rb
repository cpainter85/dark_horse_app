class Creator < ActiveRecord::Base
  # include PgSearch

  # multisearchable against: [:name, :short_description, :full_description, :profile_picture_thumb_url]

  validates :comic_vine_creator_id, uniqueness: true
  has_many :issue_credits
  has_many :issues, through: :issue_credits

  def self.fill_single_person(api_key, creator)
    comic_vine = ComicVineAPI.new
    person = comic_vine.creator(api_key, creator.comic_vine_creator_id)["results"]

    person["deck"] ? creator.short_description = person["deck"] : creator.short_description = ''
    person["description"] ? creator.full_description = person["description"] : creator.full_description = ''
    person["image"] ? creator.profile_picture_url = person["image"]["small_url"] : nil
    person["image"] ? creator.profile_picture_thumb_url = person["image"]["thumb_url"] : nil
    creator.save
  end

  def self.fill_multiple_people(api_key, creator_array)
    comic_vine = ComicVineAPI.new
    creator_array.each do |creator|
      person = comic_vine.creator(api_key, creator.comic_vine_creator_id)["results"]

      person["deck"] ? creator.short_description = person["deck"] : creator.short_description = ''
      person["description"] ? creator.full_description = person["description"] : creator.full_description = ''
      person["image"] ? creator.profile_picture_url = person["image"]["small_url"] : nil
      person["image"] ? creator.profile_picture_thumb_url = person["image"]["thumb_url"] : nil
      creator.save
    end
  end

end
