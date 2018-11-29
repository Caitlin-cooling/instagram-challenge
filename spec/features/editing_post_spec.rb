# frozen_string_literal: true

require 'rails_helper'

feature 'Posts' do

  before do
    sign_up
    create_post
  end

  scenario 'User can edit post' do
    click_link '✏️'
    fill_in 'Caption', with: 'This is so bad'
    click_button 'Update Post'
    expect(page).to have_content 'This is so bad'
  end

  scenario 'User can only edit their post' do
    log_out
    sign_up_as_second_user
    expect(page).not_to have_link '✏️'
  end
end
