class Comedian < ActiveRecord::Base
  has_many :specials

  def total_specials
    specials.count
  end

  def self.average_age
    'average-calculation'
  end
end
