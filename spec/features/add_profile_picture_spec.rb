# frozen_string_literal: true

require 'rails_helper'

feature 'Profile picture' do

  before do
    sign_up
  end
  scenario 'User can add a profile picture' do
    click_link 'Profile'
    fill_in 'Email', with: 'caitlin@gmail.com'
    fill_in 'Password', with: 'test123'
    fill_in 'user_password_confirmation', with: 'test123'
    fill_in 'user_current_password', with: 'caitlin123'
    attach_file("user_profile_picture", Rails.root + "spec/image.png")
    click_button 'Update'
    click_link 'Profile'
    expect(page).to have_content 'caitlin@gmail.com'
  end
end
