require 'spec_helper'

describe "rails welcome page" do
  it "tells you to configure your db" do
    visit "http://localhost:3000"
    page.text.must_include "Configure your database"
  end
end
