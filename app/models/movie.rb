class Movie < ActiveRecord::Base
  belongs_to :user
  before_validation :make_movie_id

  has_attached_file :poster_image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
  validates :title, :poster_image, :movie_id, :director, presence: :true
  validates_attachment_content_type :poster_image, :content_type => /\Aimage\/.*\Z/

  def make_movie_id
    if title
      self.movie_id = self.title.downcase.gsub(" ", "_")
    else
      self.movie_id = "unavailable"
    end
  end
end
