class CreateMoviePosters < ActiveRecord::Migration
  def change
    create_table :movie_posters do |t|
      t.string :title
      t.attachment :poster_image

      t.timestamps null: false
    end
  end
end
