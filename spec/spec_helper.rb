require "minitest/autorun"
require "minitest/spec"

class FeatureSpec < MiniTest::Spec
  require "capybara/poltergeist"
  include Capybara::DSL
  Capybara.register_driver :poltergeist do |config|
    Capybara::Poltergeist::Driver.new(
      config, js_errors: false,
              timeout: 1000,
              phantomjs_options: ["--ignore-ssl-errors=yes",
                                  "--ssl-protocol=any"])
    # config hash from 'http://qiita.com/meganii/items/044c606f34918d866a61'
  end
  Capybara.default_driver = :poltergeist
  register_spec_type(/page$/, self)
end
