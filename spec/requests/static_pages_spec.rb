require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Home')
		end

		it "should have default title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => 'Sample App')
		end
	end

	describe "Help Page" do

		it "should have the content 'help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have title with 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => 'Help')
		end
	end

	describe "About Page" do

		it "should have the content 'About Us" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "should have title with 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => 'About')
		end
	end

	describe "Contact Page" do

		it "should have content 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have a proper title" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => 'Contact')
		end
	end
end
