class Movie < ActiveRecord::Base
   has_attached_file :poster_image, :styles => { :medium => "300x300>" }, :default_url => "/images/:style/missing.png"
   validates :title, :poster_image, :movie_id, presence: :true
   validates_attachment_content_type :poster_image, :content_type => /\Aimage\/.*\Z/
end
