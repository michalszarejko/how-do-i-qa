require 'rails_helper'

feature 'Fourth test', js: true do
    scenario 'Javascript notification' do
      visit '/pages/test_3'
      page.has_content?('Test #3')
      find(:xpath, '//*[@id="test-3-table"]/tbody/tr[1]/td').click
      find(:xpath, '//*[@id="test-3-table"]/tbody/tr[2]/td').click
      expect(page).to have_selector('tr.highlighted')
      click_on('Next')
      expect(page).to have_content('Test #4')
    end
  end
