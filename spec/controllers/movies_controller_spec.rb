require 'spec_helper'

describe MoviesController do
  fixtures :movies
  describe 'searching similar movie' do
    #it 'should select the Search Results template for rendering' do
    #  Movie.should_receive(:search_similar).with('George Lucas')
    #  post :search_similar, {:id => 1}
    #  response.should render_template('search_similar')
    #end
    it 'should make the similar search results available to that template' do
      Movie.should_receive(:search_similar).with('George Lucas')
      post :search_similar, {:id => 1}
      assigns(:movies).should eq(@movies)
    end
  end
end