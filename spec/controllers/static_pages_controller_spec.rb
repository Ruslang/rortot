require 'spec_helper'
require 'rails_helper'
require 'utilities.rb'
describe "Static Pages" do

  #let(:base_title) { "RoRToT is underconstruction!" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_title(full_title('')) }
    it { should_not have_title( '| Home') }
    it { should have_content('RoRToT') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_title(full_title('About Us')) }
    it { should have_content('Show will') }
  end

  describe "FAQ page" do
    before { visit faq_path }

    it { should have_title(full_title('RoRToT is underconstruction!')) }
    it { should have_content('To get something') }
  end

  describe "Contacts page" do
    before { visit contacts_path }

    it { should have_titile(full_title('Contacts')) }
    it { should have_content('For your answers') }
  end
end
