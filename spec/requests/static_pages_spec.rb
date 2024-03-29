require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Hundred Steps" }

  describe "Home page" do
    it "Should have status 200" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      get '/static_pages/home'
      response.status.should be(200)
    end
    it "Should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "#{base_title} | Help")
    end
  end
  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end
  describe "Contact page" do

     it "should have the h1 'Contacts'" do
       visit '/static_pages/contacts'
       page.should have_selector('h1', :text => 'Contacts')
     end

     it "should have the title 'Contacts'" do
       visit '/static_pages/contacts'
       page.should have_selector('title', :text => "#{base_title} | Contacts")
     end
   end
  
end
