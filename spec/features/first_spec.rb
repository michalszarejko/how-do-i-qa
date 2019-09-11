require 'rails_helper'

feature 'First tist', js: true do
    scenario 'click Next button' do
      visit '/'
      page.has_content?('Test #0')
      click_on('Next')
      page.has_content?('Test #1')
    end
  end
