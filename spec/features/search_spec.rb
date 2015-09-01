require 'spec_helper'

describe "search page" do
  it "runs a web search" do
    visit "https://www.google.com/"
    fill_in "q", with: "Code Fellows"
    click_on "Google Search"
  end
end
