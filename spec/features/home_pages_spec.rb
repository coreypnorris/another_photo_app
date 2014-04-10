require 'spec_helper'

describe 'when a visitor goes to the homepage' do

  context 'the page they see if no user is logged in' do
    it 'has "Photo Sharing App" as the title' do
      visit '/'
      page.should have_content "Photo Sharing App"
    end
  end
end
