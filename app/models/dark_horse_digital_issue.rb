class DarkHorseDigitalIssue < ActiveRecord::Base
  require 'nokogiri'
  require 'open-uri'
  # require 'sanitize'

  validates :dhd_id, uniqueness: true
  has_one :for_sale_comic
  has_one :bundle

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
    if self.price_in_cents == 0
      'FREE'
    else
      "$#{self.price_in_cents.to_f/100}"
    end
  end

  def extract_volume_name_from_title
    if self.title.include? '#'
      self.title.slice(0...(self.title.index('#'))).strip
    else
      self.title
    end
  end

  def extract_issue_number_from_title
    if self.title.include? '#'
      self.title.slice(((self.title.index('#'))+1)..self.title.length).strip
    else
      '1'
    end
  end

  def extract_issue_numbers_from_bundle
    if self.title.include? '#'
      self.title.slice(self.title.index('#')...self.title.index('Bundle')).strip
    end
  end

  def extract_first_number_from_bundle
    self.title.slice((self.title.index('#')+1)...self.title.index('-')).strip.to_i
  end

  def match

    require 'sanitize'

    if self.title.include? 'Bundle'
      puts '-'*100
      puts "Searching for Bundle: #{self.title} (DHD_id: #{self.dhd_id})"
      puts '-'*100
      search = PgSearch.multisearch "#{self.extract_volume_name_from_title}"
      search.first(10).reverse.each do |result|
        puts "Id: #{result.searchable.id}"
        puts "Title: #{result.searchable.name}"
        puts "Description: #{Sanitize.fragment(result.searchable.description)}"
        puts "\# of Issues: #{Volume.find(result.searchable.id).issues.count}"
        puts '*'*100
      end
      puts '-'*100
      puts "Searching for Bundle: #{self.title} (DHD_id: #{self.dhd_id})"
      puts '-'*100
      print "Select the correct volume id:"
      volume_id = gets.chomp
      bundle = self.build_bundle
      bundle.volume_id = volume_id
      bundle.save
      puts '!'*50 + 'SUCCESS' + '!'*50
    else
      puts '-'*100
      puts "Searching for: #{self.title} with price of #{self.price_in_dollars} (DHD_id:#{self.dhd_id})"
      puts '-'*100
      search = PgSearch.multisearch "#{self.extract_volume_name_from_title}"
      search.first(10).reverse.each do |result|
        puts "Id: #{result.searchable.id}"
        puts "Title: #{result.searchable.name}"
        puts "Description: #{Sanitize.fragment(result.searchable.description)}"
        puts "\# of Issues: #{Volume.find(result.searchable.id).issues.count}"
        puts '*'*100
      end
      puts '-'*100
      puts "Searching for: #{self.title} with price of #{self.price_in_dollars} (DHD_id:#{self.dhd_id})"
      puts '-'*100
      print "Select the correct volume id:"
      volume_id = gets.chomp
      issue = Volume.find(volume_id).issues.find_by(issue_number: self.extract_issue_number_from_title)
      if issue
        match = self.build_for_sale_comic
        match.issue_id = issue.id
        match.save
        puts '!'*50 + 'SUCCESS' + '!'*50
      else
        puts 'X'*50 + 'FAILED' + 'X'*50
      end
    end
  end

  def self.unmatched
    unmatched = []
    DarkHorseDigitalIssue.all.each do |issue|
      if !issue.for_sale_comic && !issue.bundle
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
