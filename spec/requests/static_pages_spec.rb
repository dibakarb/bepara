require 'spec_helper'

describe "Static pages" do

	subject {page}

  	describe "Home page" do
    
    		before {visit root_path}

	    	it {should have_title(full_title(''))}
    		it {should_not have_title('| Home')}
	    	it {should have_content('Bepara')}

  	end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end
  end

end
