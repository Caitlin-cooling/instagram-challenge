# frozen_string_literal: true

require 'rails_helper'

feature 'Comments' do

  before do
    sign_up
    create_post
    log_out
    sign_up_as_second_user
  end

  scenario 'A user can comment on a post' do
    within '.all-posts' do
      fill_in 'Comment', with: "Commenting on this post"
      click_button 'Comment'
    end
    expect(page).to have_content "Commenting on this post"
  end
end
