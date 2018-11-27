# frozen_string_literal: true

require 'rails_helper'
require 'test_helper'

feature 'Likes' do

  before do
    sign_up
    create_post
  end

  scenario 'A user can like a post' do
    # save_and_open_page
    within '.all-posts' do
      click_button 'Like'
    end
    expect(page).to have_content '1 like'
  end
end
