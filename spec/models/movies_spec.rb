require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:valid_movie) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: "Back to the Future", poster_image: file_path, movie_id: "back_to_the_future", director: "Steven Spielberg", release_date: "June 22, 1966")
  end

  let(:movie_without_title) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: nil, poster_image: file_path, movie_id: "back_to_the_future", director: "Steven Spielberg")
  end


  let(:movie_without_movie_id) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: "Back to the future", poster_image: file_path, movie_id: nil, director: "Steven Spielberg")
  end

  let(:movie_without_poster_image) do
    Movie.create(title: "Back to the Future", movie_id: "back_to_the_future", poster_image: nil, director: "Steven Spielberg")
  end

  let(:movie_without_a_director) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: "Back to the Future",movie_id: "back_to_the_future", poster_image: file_path, director: nil)
  end

 it "isn't valid without a title" do
   expect(movie_without_title).to_not be_valid
 end

  it "isn't valid without a poster image" do
    expect(movie_without_poster_image).to_not be_valid
  end

  it "isn't valid without a director" do
    expect(movie_without_a_director).to_not be_valid
  end

  it "is valid when all attributes are present" do
    expect(valid_movie).to be_valid
  end

  it "creates a movie id from the movie title" do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    new_movie = Movie.create(title: "Back to the Future", poster_image: file_path, movie_id: nil, director: "Steven Spielberg")
    expect(new_movie.movie_id).to eq("back_to_the_future")
  end
end
