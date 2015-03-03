require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:valid_movie) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: "Back to the Future", poster_image: file_path)
  end

  let(:movie_without_title) do
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: nil, poster_image: file_path)
  end

  let(:movie_without_poster_image) do
    Movie.create(title: "Back to the Future", poster_image: nil)
  end

  it "isn't valid without a title" do
    expect(movie_without_title).to_not be_valid
  end

  it "isn't valid without a poster image" do
    expect(movie_without_poster_image).to_not be_valid
  end

  it "is valid when all attributes are present" do
    expect(valid_movie).to be_valid
  end 
end
