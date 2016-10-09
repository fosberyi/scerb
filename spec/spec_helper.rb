ENV["RAILS_ENV"] = "test"

require "dummy/application"
require "rspec/rails"

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "..")).freeze
DUMMY_APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "dummy")).freeze

Dummy::Application.initialize!

Dir["#{__dir__}/support/**/*.rb"].sort.each { |file| require file }

RSpec.configure do |config|

  config.include SassFunctions
  config.include IntegrationHelpers

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end

  config.infer_spec_type_from_file_location!
  config.profile_examples = 10
  config.order = :random
end
