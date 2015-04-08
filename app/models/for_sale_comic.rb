class ForSaleComic < ActiveRecord::Base
  belongs_to :issue
  belongs_to :dark_horse_digital_issue
  validates_uniqueness_of :issue_id, :scope => [:dark_horse_digital_issue_id]
end
