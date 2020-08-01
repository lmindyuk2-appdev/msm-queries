class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({:template => "actor_templates/index.html.erb"})
  end

  def actor_details
    @actor = Actor.where({:id => params.fetch("an_id")})[0]
    # @director = Movie.where({:director_id => @movie.director_id})
    render({:template => "actor_templates/show.html.erb"})
  end
end