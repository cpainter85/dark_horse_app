class DarkHorseDigitalIssue < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'
  require 'sanitize'

  validates :dhd_id, uniqueness: true

  def self.retrieve_issue_info(dhd_id)
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
  end

  def issue_url(dhd_id)
    "https://digital.darkhorse.com/profile/#{self.dhd_id}"
  end

  def price_in_dollars
    "$#{self.price_in_cents.to_f/100}"
  end
end


# require 'nokogiri'
# require 'open-uri'
#
# title = ''
# price = ''
# publisher = ''
# doc = Nokogiri::HTML(open('https://digital.darkhorse.com/profile/1773.conan-the-barbarian-1/'))
#
# title = doc.css('#profile-title')
# puts title
# price = doc.css('a.ajax-submit.button.blue')
# puts price
# meta = doc.xpath('//div[contains(@id, profile-meta)]//dd//a[@href]')
# puts meta.to_s
# dh_is_publisher = meta.to_s.include? 'Dark Horse Comics'
# puts dh_is_publisher
