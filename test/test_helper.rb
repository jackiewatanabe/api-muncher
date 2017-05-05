ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/reporters"  # for Colorized output
require 'simplecov'
SimpleCov.start

#  For colorful output!
Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)


# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"

class ActiveSupport::TestCase
  VCR.configure do |config|
    # set folder where store cassettes
    config.cassette_library_dir = "test/cassettes"
    # tell VCR to use webmock
    config.hook_into :webmock
    config.default_cassette_options = {
      # If we don't have a cassette for this
      # record a new one
      record: :new_episodes,
      # it determines which cassette to use
      # based on: HTTP verb
      #           URI
      #           body of the message
      match_requests_on: [:method, :uri, :body]
    }
    # this is so it doesn't record the slack token to github
    # hides the slack token
    config.filter_sensitive_data("<EDAMAM_APP_ID>") do
      ENV["EDAMAM_APP_ID"]
    end
    config.filter_sensitive_data("<EDAMAM_APPLICATION_KEY>") do
      ENV["EDAMAM_APPLICATION_KEY"]
    end
  end
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
end
