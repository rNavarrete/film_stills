class StillsController < ApplicationController
  def new
    @still = Still.new
    @films = Movie.where(user_id: current_user.id)
  end
end
