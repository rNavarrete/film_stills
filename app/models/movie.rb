class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :stills

  before_validation :make_movie_id

  has_attached_file :poster_image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates :title, :poster_image, :movie_id, :director, :user_id, presence: :true
  validates_attachment_content_type :poster_image, :content_type => /\Aimage\/.*\Z/

  
  
  def make_movie_id
    if title
      self.movie_id = self.title.downcase.gsub(" ", "_")
    else
      self.movie_id = "unavailable"
    end
  end

  def by_arrays_of_four
    complete_films_array = []
    counter = 0
    movie_set = []
    Movie.each do |movie|
      if movie == movies.last
        movie_set << movie
        complete_films_array << Array.new(movie_set)
      break
      elsif counter == 0
        movie_set << movie
        counter += 1
      elsif counter == 3
        moive_set << movie
        complete_films_array << Array.new(movie_set)
        counter = 0
        movie_set.clear
      else
        movie_set << movie
        counter += 1
      end
    end
  end
end
