require 'spec_helper'
require 'rails_helper'
include ApplicationHelper

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_title(full_title('Sign up')) }
    it { should have_content('Registration') }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Ruslan Go"
        fill_in "Email",        with: "ruslan.ftw@ya.ru"
        fill_in "Password",     with: "zoobee"
        fill_in "Confirmation", with: "zoobee"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_title(user.name) }
    it { should have_content(user.name) }
  end
end
