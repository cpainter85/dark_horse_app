class Issue < ActiveRecord::Base
  validates :comic_vine_issue_id, uniqueness: true
  belongs_to :volume
  has_many :issue_credits
  has_many :creators, through: :issue_credits

  def self.get_issues_for_volume(api_key, volume_array)
    comic_vine = ComicVineAPI.new
    volume_array.each do |volume|
      issues = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]["issues"]
      issues.each do |issue|
        i = volume.issues.new
        i.comic_vine_issue_id = issue["id"]
        i.issue_number = issue["issue_number"]
        i.story_name = issue["name"]
        i.save
      end
    end
  end

  def self.get_issues_for_single_volume(api_key, volume)
    comic_vine = ComicVineAPI.new
    issues = comic_vine.volume(api_key, volume.comic_vine_volume_id)["results"]["issues"]
    issues.each do |issue|
      i = volume.issues.new
      i.comic_vine_issue_id = issue["id"]
      i.issue_number = issue["issue_number"]
      i.story_name = issue["name"]
      i.save
    end
  end

  def self.fill_issue_single(api_key, issue)
    comic_vine = ComicVineAPI.new
    i = comic_vine.issue(api_key, issue.comic_vine_issue_id)["results"]

    i["description"] ? issue.description = i["description"] : nil
    i["image"] ? issue.cover_image_url = i["image"]["small_url"] : nil
    i["image"] ? issue.thumbnail_url = i["image"]["thumb_url"] : nil
    i["cover_date"] ? issue.cover_date = i["cover_date"] : nil
    issue.save

  end

  def self.fill_issue_multiple(api_key, issue_array)
    comic_vine = ComicVineAPI.new

    issue_array.each do |issue|
      i = comic_vine.issue(api_key, issue.comic_vine_issue_id)["results"]

      i["description"] ? issue.description = i["description"] : nil
      i["image"] ? issue.cover_image_url = i["image"]["small_url"] : nil
      i["image"] ? issue.thumbnail_url = i["image"]["thumb_url"] : nil
      i["cover_date"] ? issue.cover_date = i["cover_date"] : nil
      issue.save
    end
  end

  def self.get_creators_credits_for_single_issue(api_key, issue)
    comic_vine = ComicVineAPI.new
    creators = comic_vine.issue(api_key, issue.comic_vine_issue_id)["results"]["person_credits"]
    creators.each do |creator|
      c = issue.creators.new
      c.comic_vine_creator_id = creator["id"]
      c.name = creator["name"]
      c.save
      r = issue.issue_credits.new
      r.creator_id = Creator.find_by(comic_vine_creator_id: creator["id"]).id
      r.role = creator["role"]
      r.save
    end
  end

  def self.get_issues_without_credits
    issues = []
    Issue.all.each do |x|
      if x.issue_credits.empty?
        issues << x
      end
    end
    issues
  end

end
