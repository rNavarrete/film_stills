file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg") 

FactoryGirl.define do
  factory :movie do
    title "King of New York"
    movie_id "king_of_new_york"
    director "Abel Ferrara"
    cast "Christopher Walken, David Caruso, Laurence Fishburne"
    user_id 1
    poster_image file_path
    release_date "28 September 1990"
    factory :movie_with_still do
      after(:create) do |movie|
        create(:still, movie_id: movie)
      end
    end
  end
end
