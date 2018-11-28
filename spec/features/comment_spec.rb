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
    click_link '💬'
    fill_in 'comment_text', with: "Commenting on this post"
    click_button 'Comment'
    expect(page).to have_content "Commenting on this post"
    expect(page).to have_content("Test Person", count: 2)
  end
end
