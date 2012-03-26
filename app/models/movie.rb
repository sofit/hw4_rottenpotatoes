class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.search_similar(director)
    $LOG.debug("director = #{director}")
    if director and !director.empty?
      @movies = Movie.find_all_by_director(director)
    end
  end
end
