class AddLastToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :last, :boolean, default: false
  end
end
