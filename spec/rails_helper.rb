ENV["RAILS_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)

require "rspec/rails"
require "shoulda/matchers"
Dir[Rails.root.join("spec/support/**/*.rb")].each { |file| require file }

module Features
  # Extend this module in spec/support/features/*.rb
  include Formulaic::Dsl
end

module Helpers
  def login_as(user)
    visit "/"
    page.fill_in('Email', with: user.email)
    page.fill_in('Password', with: user.password)
    page.click_button('Sign In')
  end

  def create_four_films
    file_path = File.open("#{Rails.root}/app/assets/images/pulp.jpg")
    Movie.create(title: "Full Metal Jacket", poster_image: file_path)
    Movie.create(title: "Barry Lyndon", poster_image: file_path)
    Movie.create(title: "The Shining", poster_image: file_path)
    Movie.create(title: "A Clockwork Orange", poster_image: file_path)
  end
end

RSpec.configure do |config|
  config.include Features, type: :feature
  config.include (Helpers)
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false
end

ActiveRecord::Migration.maintain_test_schema!
Capybara.javascript_driver = :webkit
