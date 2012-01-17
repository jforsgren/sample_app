require 'spec_helper'

describe PagesController do
	render_views

	describe "Get 'home'" do
		it "should be successful" do
			get 'home'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'home'
			response.should have_selector("title",
						:content => "Ruby on Rails Tutorial Sample App | Home")
		end
	end
	
	describe "Get 'contact'" do
		it "should be successful" do
			get 'contact'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'contact'
			response.should have_selector("title",
						:content => "Ruby on Rails Tutorial Sample App | Contact")
		end
	end
	
	describe "Get 'about'" do
		it "should be successful" do
			get 'about'
			response.should be_success
		end
		
		it "should have the right title" do
			get 'about'
			response.should have_selector("title",
						:content => "Ruby on Rails Tutorial Sample App | About")
		end
	end
end
