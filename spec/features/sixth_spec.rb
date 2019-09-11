require 'rails_helper'

feature 'Sixth test', js: true do
    let!(:user) {create :user}

    scenario 'Authentification' do
      visit '/users/sign_in'
      page.has_content?('You need to sign in or sign up before continuing.')
      fill_in('user_email', with: 'admin@example.com')
      fill_in('user_password', with: '12345678')
      within(:xpath, '//*[@id="new_user"]/div[5]') do
        click_on('Log in')
      end
      page.has_content? ('Signed in successfully.')
      click_on('Next')
      page.has_content? ('Test #6')
    end
  end
