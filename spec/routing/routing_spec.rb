require 'spec_helper'

describe "routing to profiles" do
  it "routes /movies/search_similar/:id to movies#search_similar for id" do
    {:get => "/movies/search_similar/1"}.should route_to(
                                                    :controller => "movies",
                                                    :action => "search_similar",
                                                    :id => "1"
                                                )
  end

  it "do expose a list of movies" do
    {:get => "/movies"}.should be_routable
  end
end