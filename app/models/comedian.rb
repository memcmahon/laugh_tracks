class Comedian < ActiveRecord::Base
  has_many :specials

  def total_specials
    specials.count
  end
end
