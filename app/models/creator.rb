class Creator < ActiveRecord::Base

  validates :comic_vine_creator_id, uniqueness: true
  has_many :issue_credits
  has_many :issues, through: :issue_credits
end
