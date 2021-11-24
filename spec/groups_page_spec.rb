require 'rails_helper'

RSpec.describe 'In categories page', js: true, type: :system do
  before(:all) do
    user1 = User.create({ name: 'Foo', email: 'user1@mail.com', password: '111111' })
    Group.create({ name: 'Transport', icon: 'https://lorempixel.com/100/100/transport/', user_id: user1.id })
    Entity.create({ name: '001 Transaction', amount: 10, user_id: user1.id })
  end

  describe 'I can see' do
    it 'the Add new category button' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      expect(page).to have_button('Add New Category')
    end

    it 'the back button' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      expect(page).to have_link('<')
    end

    it 'all categories' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      expect(page).to have_content('All Categories:')
    end
  end

  describe 'when I click' do
    it 'on Add New Category, it redirects me to New Category page' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      click_button 'Add New Category'
      expect(page).to have_content('Icon')
    end
  end
end
