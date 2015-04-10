class DarkHorseDigitalIssue < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'
  # require 'sanitize'

  validates :dhd_id, uniqueness: true
  has_many :for_sale_comics
  has_many :bundles

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
      puts "#{e.message} for DHD ID #{dhd_id}"

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

  def extract_issue_numbers_from_bundle
    self.title.slice(self.title.index('#')...self.title.index('Bundle')).strip
  end

  def extract_first_number_from_bundle
    self.title.slice((self.title.index('#')+1)...self.title.index('-')).strip.to_i
  end

  def match

    require 'sanitize'

    if self.title.include? 'Bundle'
      puts "Searching for Bundle: #{self.title}"
      puts '-'*100
      search = PgSearch.multisearch "#{self.extract_volume_name_from_title}"
      search.first(5).each do |result|
        puts "Id: #{result.searchable.id}"
        puts "Title: #{result.searchable.name}"
        puts "Description: #{Sanitize.fragment(result.searchable.description)}"
        puts "\# of Issues: #{Volume.find(result.searchable.id).issues.count}"
        puts '*'*100
      end
      print "Select the correct volume id:"
      volume_id = gets.chomp
      bundle = self.bundles.new
      bundle.volume_id = volume_id
      bundle.save
      puts 'SUCCESS'+'!'*50
    else
      puts "Searching for: #{self.title} with price of #{self.price_in_dollars}"
      puts '-'*100
      search = PgSearch.multisearch "#{self.extract_volume_name_from_title}"
      search.first(5).each do |result|
        puts "Id: #{result.searchable.id}"
        puts "Title: #{result.searchable.name}"
        puts "Description: #{Sanitize.fragment(result.searchable.description)}"
        puts "\# of Issues: #{Volume.find(result.searchable.id).issues.count}"
        puts '*'*100
      end
      print "Select the correct volume id:"
      volume_id = gets.chomp
      issue = Volume.find(volume_id).issues.find_by(issue_number: self.extract_issue_number_from_title)
      if issue
        match = self.for_sale_comics
        match.issue_id = issue.id
        match.save
        puts 'SUCCESS'+'!'*50
      else
        puts 'FAILED'+'!'*50
      end
    end
  end

  def self.unmatched
    unmatched = []
    DarkHorseDigitalIssue.all.each do |issue|
      if !issue.for_sale_comics && !issue.bundles
        unmatched << issue
      end
    end
    unmatched
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
