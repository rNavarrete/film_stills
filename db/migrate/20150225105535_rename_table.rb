class RenameTable < ActiveRecord::Migration
  def change
    rename_table :movie_posters, :movies
  end
end
