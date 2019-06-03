class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum('rating')
  end

  def self.most_popular_show
    popular = highest_rating
    Show.find_by(:rating = 10)
  end
end
