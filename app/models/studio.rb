class Studio < ApplicationRecord
  has_many :movies

  def studio_movies
    movies.all
  end
end
