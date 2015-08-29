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
    movie_array = []
    Movie.all.map do |movie|
      if counter == 4
        counter = 0
        complete_films_array << movie_array
        movie_array.clear
      elsif counter < 4
        arr << movie
        counter += 1
      end
    end
  end
end
