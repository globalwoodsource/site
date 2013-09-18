require 'spec_helper'

describe "Static" do

  page_name = "home"
  describe "#{page_name} page" do
    test_string = "Global Wood Source | Exotic woods - slabs, burls, guitar stock & more"
    it "should have the title '#{test_string}'" do
      visit "/static_pages/#{page_name}"
      expect(page).to have_title(test_string)
    end
  end
  
  page_name = "videos"
  describe "#{page_name} page" do
    test_string = "Videos"
    it "should have the content '#{test_string}'" do
      visit "/static_pages/#{page_name}"
      expect(page).to have_content(test_string)
    end
  end
end