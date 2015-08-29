class AddMovieIdToStills < ActiveRecord::Migration
  def change
    add_reference :stills, :movie, index: true
    add_foreign_key :stills, :movies
  end
end
