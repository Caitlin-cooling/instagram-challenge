# frozen_string_literal: true

require 'rails_helper'

feature 'Profile picture' do

  before do
    sign_up
  end

  scenario 'User can add a profile picture when they sign up' do
    expect(page.find('.avatar')['src']).to have_content 'profile1.jpg'
  end

  scenario 'User can update their profile picture' do
    click_link 'Profile'
    attach_file("user_avatar", Rails.root + "spec/profile2.jpg")
    fill_in 'Password', with: 'test123'
    fill_in 'user_password_confirmation', with: 'test123'
    fill_in 'user_current_password', with: 'caitlin123'
    click_button 'Update'
    expect(page.find('.avatar')['src']).to have_content 'profile2.jpg'
  end
end
