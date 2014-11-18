require 'spec_helper'
require 'rails_helper'

describe "Static Pages" do
  
  let(:base_title) { "RoRToT is underconstruction!" }

  describe "About page" do

    it "should have the right titile" do
      visit '/about'
      expect(page).to have_title("About | #{base_title}")
    end
  
    it "should have the content 'Show will'" do
      visit '/about'
      expect(page).to have_content("Show will")
    end
  end

  describe "Contacts page" do
    it "should have the right titile" do
      visit '/contacts'
      expect(page).to have_title("Contacts | #{base_title}")
    end
  
    it "should have the content 'For your answers'" do
      visit '/contacts'
      expect(page).to have_content("For your answers")
    end
  end

  describe "FAQ page" do
  
    it "should have the right titile" do
      visit '/faq'
      expect(page).to have_title("FAQ | #{base_title}")
    end
  
    it "should have the content 'To get something'" do
      visit '/faq'
      expect(page).to have_content("To get something") 
    end
  end

  describe "Home page" do

    it "should have the right titile" do
      visit '/home'
      expect(page).to have_title("Home | #{base_title}")
    end
  
    it "should have the content 'Sample Application'" do
      visit '/home'
      expect(page).to have_content("Sample Application")
    end
  end  

end