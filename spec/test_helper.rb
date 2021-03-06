# frozen_string_literal: true

def sign_up
  visit '/'
  click_link 'Sign Up'
  fill_in 'Name', with: 'Caitlin Cooling'
  fill_in 'Email', with: 'caitlin@test.com'
  attach_file("user_avatar", Rails.root + "spec/profile1.jpg")
  fill_in 'Password', with: 'caitlin123'
  fill_in 'user_password_confirmation', with: 'caitlin123'
  click_button 'Sign up'
end

def sign_up_as_second_user
  visit '/'
  click_link 'Sign Up'
  fill_in 'Name', with: 'Test Person'
  fill_in 'Email', with: 'person@gmail.com'
  attach_file("user_avatar", Rails.root + "spec/profile2.jpg")
  fill_in 'Password', with: 'test123'
  fill_in 'user_password_confirmation', with: 'test123'
  click_button 'Sign up'
end

def create_post
  click_link '➕'
  attach_file("Image", Rails.root + "spec/image.png")
  fill_in 'Caption', with: 'This is so cool'
  click_button 'Create Post'
end

def log_out
  click_link 'Log out'
end

def write_comment
  click_link '💬'
  fill_in 'comment_text', with: "Commenting on this post"
  click_button 'Comment'
end
