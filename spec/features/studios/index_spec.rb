require 'rails_helper'

RSpec.describe 'studios index page' do 
  before :each do 
    @studio_1 = Studio.create!(name: 'Universal Studios', location: '123 Hollywood Blvd')
    @studio_2 = Studio.create!(name: 'Warner Brothers', location: '555 Santa Monica Blvd')

    @movie_1 = Movie.create!(title: 'Bring It On', creation_year: '2000', genre: 'Comedy', @studio_1.id)
    @movie_2 = Movie.create!(title: 'Legally Blond', creation_year: '2001', genre: 'Documentary', @studio_1.id)
    @movie_3 = Movie.create!(title: 'Chicago', creation_year: '2002', genre: 'Drama', @studio_1.id)
    @movie_4 = Movie.create!(title: 'Under the Tuscan Sun', creation_year: '2003', genre: 'Romance', @studio_2.id)
    @movie_5 = Movie.create!(title: 'Mean Girls', creation_year: '2004', genre: 'Comedy', @studio_2.id)

    @actor_1 = Actor.create!(name: 'Kirsten Dunst', age: 20)
    @actor_2 = Actor.create!(name: 'Reese Witherspoon', age: 20)
    @actor_3 = Actor.create!(name: 'Renee Zellweger', age: 25)
    @actor_4 = Actor.create!(name: 'Diane Lane', age: 30)
    @actor_5 = Actor.create!(name: 'Sandra Oh', age: 40)
    @actor_6 = Actor.create!(name: 'Lindsey Lohan', age: 66)

    @movie_1.actors << @actor_1
    @movie_1.actors << @actor_5
    @movie_1.actors << @actor_6

    @movie_2.actors << @actor_2

    @movie_3.actors << @actor_3
    @movie_3.actors << @actor_5

    @movie_4.actors << @actor_4

    @movie_5.actors << @actor_6

  end
  it 'displays all studios and their attributes' do 

  end
  #US1
  xit 'for each studio I see all of the studios movies and the movies attributes' do 

  end
end