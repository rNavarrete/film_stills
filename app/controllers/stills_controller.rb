class StillsController < ApplicationController
  def new
    @still = Still.new
  end
end
