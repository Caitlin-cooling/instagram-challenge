# frozen_string_literal: true

require 'rails_helper'
require 'test_helper'

feature 'Likes' do

  before do
    sign_up
    create_post
  end

  scenario 'A user can like a post' do
    within '.all-posts' do
      click_link '❤️'
    end
    expect(page).to have_content '1 like'
  end

  scenario 'A user can only like a post once' do
    within '.all-posts' do
      click_link '❤️'
      click_link '❤️'
      click_link '❤️'
    end
    expect(page).to have_content '1 like'
  end
end
