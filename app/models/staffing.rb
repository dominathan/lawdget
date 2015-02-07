class Staffing < ActiveRecord::Base
  belongs_to :lawfirm
  belongs_to :matter
end
