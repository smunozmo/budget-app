require 'rails_helper'

RSpec.describe 'Login page', js: true, type: :system do
  before(:all) do
    User.create({ name: 'Foo', email: 'user1@mail.com', password: '111111' })
  end

  describe 'contains' do
    it 'Username and password inputs, and Log in button' do
      visit new_user_session_path
      expect(page).to have_field('user_email')
      expect(page).to have_field('user_password')
      expect(page).to have_button('Log in')
    end
  end

  describe 'when I click the submit button' do
    it 'without filling in the username and the password, I get a detailed error' do
      visit new_user_session_path
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end

    it 'after filling in the username and the password with incorrect data, I get a detailed error' do
      visit new_user_session_path
      fill_in 'user_email', with: 'wrong_user@email.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end

    it 'after filling in the username and the password with correct data, I am redirected to the root page' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
    end
  end
end
