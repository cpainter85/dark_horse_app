class DarkHorseDigitalIssue < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'
  # require 'sanitize'

  validates :dhd_id, uniqueness: true
  has_one :for_sale_comic

  def self.retrieve_issue_info(dhd_id)
    require 'sanitize'

    doc = Nokogiri::HTML(open("https://digital.darkhorse.com/profile/#{dhd_id}/"))

    meta = doc.xpath('//div[contains(@id, profile-meta)]//dd//a[@href]')

    if meta.to_s.include? 'Dark Horse Comics'

      issue = DarkHorseDigitalIssue.new
      issue.dhd_id = dhd_id
      title = doc.css('#profile-title').to_s
      price = doc.css('a.ajax-submit.button.blue')

      issue.title = Sanitize.fragment(title).strip
      issue.price_in_cents = ((Sanitize.fragment(price.to_s).delete '$').to_f*100).to_i
      issue.save
    end
  rescue OpenURI::HTTPError => e
    if e.message == '404 NOT FOUND'
      puts e.message

    end
  end

  def issue_url
    "https://digital.darkhorse.com/profile/#{self.dhd_id}"
  end

  def price_in_dollars
    "$#{self.price_in_cents.to_f/100}"
  end

  def extract_volume_name_from_title
    self.title.slice(0...(self.title.index('#'))).strip
  end

  def extract_issue_number_from_title
    self.title.slice(((self.title.index('#'))+1)..self.title.length).strip
  end

  def match_issue
    v = Volume.find_by(name: self.extract_volume_name_from_title)
    i = v.issues.find_by(issue_number: self.extract_issue_number_from_title)
    if i
      fsc = self.build_for_sale_comic
      fsc.issue_id = i.id
      fsc.save
    end
  end

end

# def self.retrieve_issue_info(dhd_id)
#   require 'sanitize'
#
#   doc = Nokogiri::HTML(open("https://digital.darkhorse.com/profile/#{dhd_id}/"))
#
#   meta = doc.xpath('//div[contains(@id, profile-meta)]//dd//a[@href]')
#
#   if meta.to_s.include? 'Dark Horse Comics'
#
#     issue = DarkHorseDigitalIssue.new
#     issue.dhd_id = dhd_id
#     title = doc.css('#profile-title').to_s
#     price = doc.css('a.ajax-submit.button.blue')
#
#     issue.title = Sanitize.fragment(title).strip
#     issue.price_in_cents = ((Sanitize.fragment(price.to_s).delete '$').to_f*100).to_i
#     issue.save
#   end
# end
