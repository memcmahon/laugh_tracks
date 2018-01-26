require 'pry'
require './spec/spec_helper'

describe "user sees comedian index", :type => :feature do
  context "visit /comedians" do
    it "shows the comedian information" do
      visit '/comedians'

      expect(current_path).to eq('/comedians')
      expect(page).to have_content('Name:')
      expect(page).to have_content('Age:')
    end
  end
end
