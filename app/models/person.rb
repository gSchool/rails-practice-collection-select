class Person < ActiveRecord::Base
  has_many :employments
  has_many :organizations, through: :employments



  def full_name
    "#{first_name} #{last_name}"
  end

end
