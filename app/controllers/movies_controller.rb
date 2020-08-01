class MoviesController < ApplicationController
  def casablanca
    render({ :template => "movie_templates/cb.html.erb" })
  end
  
  def before2k
    render({ :template => "movie_templates/pre2000.html.erb" })
  end

  def index
    @list_of_movies = Movie.all
    render({:template => "movie_templates/index.html.erb"})
  end

  def movie_details
    @movie = Movie.where({:id => params.fetch("an_id")})[0]
    @director = Movie.where({:director_id => @movie.director_id})
    render({:template => "movie_templates/show.html.erb"})
  end
end
