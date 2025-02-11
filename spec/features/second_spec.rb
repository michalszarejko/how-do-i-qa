require 'rails_helper'

feature 'Second test', js: true do

    scenario 'Click correct Next button' do
      visit '/pages/test_1'
      expect(page).to have_content('Test #1')
      within(:div, "#footer") do
        click_on('Next')
      end
      expect(page).to have_content('Test #2')
    end
end
