require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("zoo")).to match(/zoo/)
    end

    it "should include the base title" do
      expect(full_title("zoo")).to match(/RoRToT is underconstruction!/)
    end

    it "should not include a dash for the home page" do
      expect(full_title("")).not_to match(/\-/)
    end
  end
end
