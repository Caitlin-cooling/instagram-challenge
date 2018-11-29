# frozen_string_literal: true

require 'rails_helper'

feature 'Profile page' do

  before do
    sign_up
    click_link 'Profile'
  end

  scenario 'has name and avatar on it' do
    expect(page).to have_content 'Caitlin Cooling'
    expect(page.find('.profile')['src']).to have_content 'profile1.jpg'
  end
end
