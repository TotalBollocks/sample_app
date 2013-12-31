require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit root_path
			page.should have_selector('h1', :text => 'Home')
		end

		it "should have default title" do
			visit root_path
			page.should have_selector('title', :text => 'Sample App')
			page.should_not have_selector('title', :text => '| Home')
		end
	end

	describe "Help Page" do

		it "should have the content 'help'" do
			visit help_path
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have title with 'Help'" do
			visit help_path
			page.should have_selector('title', :text => 'Help')
		end
	end

	describe "About Page" do

		it "should have the content 'About Us" do
			visit about_path
			page.should have_selector('h1', :text => 'About')
		end

		it "should have title with 'About'" do
			visit about_path
			page.should have_selector('title', :text => 'About')
		end
	end

	describe "Contact Page" do

		it "should have content 'Contact'" do
			visit contact_path
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have a proper title" do
			visit contact_path
			page.should have_selector('title', :text => 'Contact')
		end
	end
end
