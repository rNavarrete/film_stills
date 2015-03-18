class AddUserIdToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :user_id, index: true
  end
end
