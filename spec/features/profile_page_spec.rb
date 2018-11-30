# frozen_string_literal: true

require 'rails_helper'

feature 'Profile page' do

  before do
    sign_up
    create_post
  end

  scenario 'has name and avatar on it' do
    click_link 'Profile'
    expect(page).to have_content('Caitlin Cooling', count: 2)
    expect(page.find('#user')['src']).to have_content 'profile1.jpg'
  end

  scenario 'has the users posts on it' do
    click_link 'Profile'
    expect(page.find('.post-image')['src']).to have_content "image.png"
  end

  feature 'user can click on the image for more options'

  before do
    write_comment
    click_link 'Profile'
    click_link 'See more'
  end

  scenario 'the see the caption, likes count and comments' do
    expect(page).to have_content 'This is so cool'
    expect(page).to have_content '0 likes'
  end

  scenario 'user can like, comment, edit and delete the post' do
    expect(page).to have_link '❤️'
    expect(page).to have_link '💬'
    expect(page).to have_link '✏️'
    expect(page).to have_link '🗑️'
  end
end
