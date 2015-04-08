class RetrieveDhdInfo
  require 'nokogiri'
  require 'open-uri'

  title = ''
  price = ''
  publisher = ''
  doc = Nokogiri::HTML(open('https://digital.darkhorse.com/profile/1773.conan-the-barbarian-1/'))

  title = doc.css('#profile-title')
  puts title
  price = doc.css('a.ajax-submit.button.blue')
  # price = doc.xpath('//a[contains(@class, ajax-submit)]')
  puts price
  # meta = doc.xpath('//div[contains(@id, profile-meta)]//dd')
  meta = doc.xpath('//div[contains(@id, profile-meta)]//dd//a[@href]')
  puts meta.to_s
  dh_is_publisher = meta.to_s.include? 'Dark Horse Comics'
  puts dh_is_publisher
  # publisher = meta.include? ''
end
