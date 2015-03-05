class Employment < ActiveRecord::Base

  belongs_to :job_title
  belongs_to :location
  belongs_to :organization
  belongs_to :person

end
