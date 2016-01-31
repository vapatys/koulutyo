class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    
    d=self.ratings.average(:score)
    d
  end

  def to_s
    "#{self.name} #{self.brewery.name}"
  end
end


