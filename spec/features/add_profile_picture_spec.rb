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
  end
end
