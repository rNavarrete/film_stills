class WelcomeController < ApplicationController
  def home
    @user = User.new
  end

  def test
  end
end
