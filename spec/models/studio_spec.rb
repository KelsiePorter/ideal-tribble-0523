require 'rails_helper'

RSpec.describe Studio do
  describe 'relationships' do
    it {should have_many :movies}
  end

  describe 'instance_methods' do 
    before :each do 
      @studio_1 = Studio.create!(name: 'Universal Studios', location: '123 Hollywood Blvd')
      @studio_2 = Studio.create!(name: 'Warner Brothers', location: '555 Santa Monica Blvd')
  
      @movie_1 = Movie.create!(title: 'Bring It On', creation_year: '2000', genre: 'Comedy', studio_id: @studio_1.id)
      @movie_2 = Movie.create!(title: 'Legally Blond', creation_year: '2001', genre: 'Documentary', studio_id: @studio_1.id)
      @movie_3 = Movie.create!(title: 'Chicago', creation_year: '2002', genre: 'Drama', studio_id: @studio_1.id)
  
      @movie_4 = Movie.create!(title: 'Under the Tuscan Sun', creation_year: '2003', genre: 'Romance', studio_id: @studio_2.id)
      @movie_5 = Movie.create!(title: 'Mean Girls', creation_year: '2004', genre: 'Comedy', studio_id: @studio_2.id)
    end
    describe '#studio_movie' do 
      it 'returns all movies associated with a studio' do 
        expect(@studio_1.studio_movies.count).to eq(3)
        expect(@studio_2.studio_movies.count).to eq(2)
        #not sure how to thoroughly test since my method returns an AR association
      end
    end
  end
end
