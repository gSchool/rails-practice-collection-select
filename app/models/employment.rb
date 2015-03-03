class Employment < ActiveRecord::Base
  belongs_to :person
  belongs_to :job_title
  belongs_to :location
  belongs_to :organization

end
