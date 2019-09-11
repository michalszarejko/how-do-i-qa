require 'rails_helper'

feature 'Third test', js: true do

    scenario 'Fill the form' do
      visit '/pages/test_2'
      expect(page).to have_content('Test #2')
      fill_in('example_textfield', with: 'example text')
      check('example_checkbox')
      select('Opt 2', from: 'example_select')
      choose('example_radiobutton_opt_2')
      click_on('Submit')
      expect(page).to have_content('Submitted successfully')
      click_on('Next')
      expect(page).to have_content('Test #3')
    end
  end
