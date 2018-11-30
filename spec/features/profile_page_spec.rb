# frozen_string_literal: true

require 'rails_helper'

feature 'Profile page' do

  before do
    sign_up
  end

  scenario 'has name and avatar on it' do
    click_link 'Profile'
    expect(page).to have_content 'Caitlin Cooling'
    expect(page.find('#user')['src']).to have_content 'profile1.jpg'
  end

  scenario 'has the users posts on it' do
    create_post
    click_link 'Profile'
    expect(page.find('.post-image')['src']).to have_content "image.png"
  end
end
