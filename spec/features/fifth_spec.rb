require 'rails_helper'

feature 'Fifth test', js: true do
    scenario 'Ajax call' do
      visit '/pages/test_4'
      page.has_content?('Test #4')
      page.has_content? ('Text of this element should change after call completes.')
      click_on('Click me to fire an AJAX call')
      page.has_content? ('This is answer from the server')
      click_on('Next')
      page.has_content?('Test #5')
    end
  end
