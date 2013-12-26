require 'spec_helper'

describe "Static pages" do
  describe "Home page" do

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('Bepara')
    end

    it "should not have the extended title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

    it "should have the content 'Bepara'" do
      visit '/static_pages/home'
      expect(page).to have_content('Bepara')
    end

  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

end
