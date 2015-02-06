require 'spec_helper'
require 'rails_helper'
include ApplicationHelper

describe "Static Pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'You are welcome'}
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title( '- Home') }
    # it { should have_title(full_title('')) }
    # it { should_not have_title( '- Home') }
    # it { should have_content('RoRToT') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'Show will') }
    it { should have_title(full_title('About')) }
    # it { should have_title(full_title('About')) }
    # it { should have_content('Show will') }
  end

  describe "FAQ page" do
    before { visit faq_path }

    it { should have_selector('h1', text: 'To get something') }
    it { should have_title(full_title('FAQ')) }
    # it { should have_title(full_title('FAQ')) }
    # it { should have_content('To get something') }
  end

  describe "Contacts page" do
    before { visit contacts_path }

    it { should have_selector('h1', text: 'For your answers') }
    it { should have_title(full_title('Contacts')) }
    # it { should have_title(full_title('Contacts')) }
    # it { should have_selector('h1', text: 'Contacts') }
  end
end
