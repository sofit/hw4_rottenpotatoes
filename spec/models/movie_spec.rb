require 'spec_helper'
require 'logger'

$LOG = Logger.new('hw4.log')

describe Movie do
  fixtures :movies
  describe 'searching similar movie' do
    it 'should call the model method that performs similar search' do
      $LOG.debug("movies = #{@movies}")
      Movie.search_similar('George Lucas').map {|movie| movie.director.should == 'George Lucas'}
    end
  end
end