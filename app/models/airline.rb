class Airline < ApplicationRecord
  has_many :reviews
  # When we create a new Airline, we take the name of the airline and slugify it,
  # we then set it as the slug value b4 adding it to the Db
  before_create :slugify
  def slugify
    # self = the current object we are working on, e.g. airline ={}(airline.slug)
    self.slug = name.parameterize # create url save version of the name
  end

  # Get the average score for an Airline review
  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
