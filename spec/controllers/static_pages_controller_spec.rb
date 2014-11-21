require 'spec_helper'
require 'rails_helper'

describe "Static Pages" do
  
  #let(:base_title) { "RoRToT is underconstruction!" }

  describe "Home page" do

    it "should have the right base titile" do
      visit '/home'
      expect(page).to have_title("RoRToT is underconstruction!")
    end

    it "should have a custom page title" do
      visit '/home'
      expect(page).to have_title('Home |')
    end
  
    it "should have the content 'Sample Application'" do
      visit '/home'
      expect(page).to have_content("Sample Application")
    end
  end 

  describe "About page" do

    it "should have the right base titile" do
      visit '/about'
      expect(page).to have_title("RoRToT is underconstruction!")
    end
  
    it "should have a custom page title" do
      visit '/about'
      expect(page).to have_title('About |')
    end

    it "should have the content 'Show will'" do
      visit '/about'
      expect(page).to have_content("Show will")
    end
  end

   describe "FAQ page" do
  
    it "should have the right base titile" do
      visit '/faq'
      expect(page).to have_title("RoRToT is underconstruction!")
    end

    it "should have a custom page title" do
      visit '/faq'
      expect(page).to have_title('FAQ |')
    end
  
    it "should have the content 'To get something'" do
      visit '/faq'
      expect(page).to have_content("To get something") 
    end
  end

  describe "Contacts page" do
    it "should have the right base titile" do
      visit '/contacts'
      expect(page).to have_title("RoRToT is underconstruction!")
    end

    it "should have a custom page title" do
      visit '/contacts'
      expect(page).to have_title('Contacts |')
    end
  
    it "should have the content 'For your answers'" do
      visit '/contacts'
      expect(page).to have_content("For your answers")
    end
  end
end