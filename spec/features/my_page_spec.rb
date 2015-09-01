require "spec_helper"

describe "local page" do
  it "has a welcome header" do
    visit "/Users/scottmacpherson/Projects/Code_Fellows/ch_1/public/my_page.html"
    page.text.must_include "Welcome to my page!"
  end
end
