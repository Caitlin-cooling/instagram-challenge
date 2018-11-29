# frozen_string_literal: true

require 'rails_helper'

feature 'Posts' do

  before do
    sign_up
    create_post
  end

  scenario 'User can delete post' do
    click_link '🗑️'
    expect(page).not_to have_content 'This is so cool'
  end

  scenario 'User can only delete their post' do
    log_out
    sign_up_as_second_user
    expect(page).not_to have_link '🗑️'
  end
end
