class Bundle < ActiveRecord::Base
  belongs_to :volume
  belongs_to :dark_horse_digital_issue
  validates_uniqueness_of :volume_id, :scope => [:dark_horse_digital_issue_id]
end
