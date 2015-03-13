class AddCastToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :cast, :string
  end
end
