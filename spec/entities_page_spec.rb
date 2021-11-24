require 'rails_helper'

RSpec.describe 'In transactions page', js: true, type: :system do
  before(:all) do
    user1 = User.create({ name: 'Foo', email: 'user1@mail.com', password: '111111'})
    group1 = Group.create({name: 'Transport', icon: 'https://lorempixel.com/100/100/transport/', user_id: user1.id})
    entity1 = Entity.create({name: '001 Transaction', amount: 10, user_id: user1.id})
    group_entity1 = GroupEntity.create({entity_id: entity1.id, group_id: group1.id})
  end

  describe 'I can see' do

    it 'the Add new transaction button' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      Group.create({id: 2, name: 'Test', icon: 'https://lorempixel.com/100/100/transport/', user_id: 1})
      visit 'group/2/show'
      expect(page).to have_button('Add New Transaction')
    end

    it 'the Add transaction button' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      visit entity_new_path
      expect(page).to have_button('Add Transaction')
    end

    it 'the back button' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      visit entity_new_path
      expect(page).to have_link('<')
    end
  end

  describe 'when I click' do
    it 'on Add New Transaction, it redirects me to New Transaction page' do
      visit new_user_session_path
      fill_in 'user_email', with: 'user1@mail.com'
      fill_in 'user_password', with: '111111'
      click_button 'Log in'
      Group.create({id: 2, name: 'Test', icon: 'https://lorempixel.com/100/100/transport/', user_id: 1})
      visit 'group/2/show'
      click_button 'Add New Transaction'
      expect(page).to have_content('Amount')
    end
  end
end
