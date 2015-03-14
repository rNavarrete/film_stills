class AddFirstToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :first, :boolean, default: false
  end
end
