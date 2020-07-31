class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({:template => "director_templates/index.html.erb"})
  end

  def eldest
    @eldest = Director.where.not({:dob => nil}).order({:dob => :asc})[0]
    render({:template => "director_templates/eldest.html.erb"})
  end
  def youngest
    @youngest = Director.where.not({:dob => nil}).order({:dob => :desc})[0]
    render({:template => "director_templates/youngest.html.erb"})
  end
  def director_details
    @director = Director.where({:id => params.fetch("an_id")})[0]
    @filmography = Movie.where({:director_id => @director.id})
    render({:template => "director_templates/show.html.erb"})
  end


end
