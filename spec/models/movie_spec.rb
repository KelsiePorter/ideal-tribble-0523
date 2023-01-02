require 'rails_helper'

RSpec.describe Movie do
  describe 'relationships' do
    it {should belong_to :studio}
    it {should have_many :movie_actors}
    it {should have_many(:actors).through(:movie_actors)}
  end

  describe 'instance methods' do 
    describe '#youngest_oldest_actors' do 
      before :each do 
        @studio_1 = Studio.create!(name: 'Universal Studios', location: '123 Hollywood Blvd')
        @movie_1 = Movie.create!(title: 'Bring It On', creation_year: '2000', genre: 'Comedy', studio_id: @studio_1.id)
        
        @actor_1 = Actor.create!(name: 'Kirsten Dunst', age: 20)
        @actor_5 = Actor.create!(name: 'Sandra Oh', age: 40)
        @actor_6 = Actor.create!(name: 'Lindsey Lohan', age: 66)

        @movie_1.actors << @actor_1
        @movie_1.actors << @actor_5
        @movie_1.actors << @actor_6
      end
      it 'returns actors in order from youngest to oldest' do 

        expect(@movie_1.youngest_oldest_actors).to eq([@actor_1, @actor_5, @actor_6])
      end
    end
  end
end
