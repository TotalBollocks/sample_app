require 'spec_helper'

describe "StaticPages" do
	subject {page}

	describe "Home page" do
		before {visit root_path}

		it { should have_selector('h1', :text => 'Home') }
		it { should have_selector('title', :text => full_title('')) }

		describe "for signed in users" do
			let(:user) { FactoryGirl.create(:user) }
			before do
				FactoryGirl.create(:micropost, user: user, content: "Micropost one")
				FactoryGirl.create(:micropost, user: user, content: "Micropost two")
				sign_in user
				visit root_path
			end

			it "should render the users feed" do
				user.feed.each do |item|
					page.should have_selector("li##{item.id}", text: item.content)
				end
			end
		end
	end

	describe "Help Page" do
		before {visit help_path}

		it { should have_selector('h1', :text => 'Help') }
		it { should have_selector('title', :text => full_title('Help')) }
	end

	describe "About Page" do
		before {visit about_path}
		
		it { should have_selector('h1', :text => 'About') }
		it { should have_selector('title', :text => full_title('About')) }
	end

	describe "Contact Page" do
		before {visit contact_path}
		
		it { should have_selector('h1', :text => 'Contact') }
		it { should have_selector('title', :text => full_title('Contact')) }
	end


end
