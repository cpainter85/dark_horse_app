class IssueCredit < ActiveRecord::Base
  belongs_to :issue
  belongs_to :creator
end
