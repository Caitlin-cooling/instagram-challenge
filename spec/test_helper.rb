# frozen_string_literal: true

def sign_up
  visit '/'
  click_link 'Sign Up'
  fill_in 'Name', with: 'Caitlin Cooling'
  fill_in 'Email', with: 'caitlin@test.com'
  fill_in 'Password', with: 'caitlin123'
  fill_in 'user_password_confirmation', with: 'caitlin123'
  click_button 'Sign up'
end

def sign_up_as_second_user
  visit '/'
  click_link 'Sign Up'
  fill_in 'Name', with: 'Test Person'
  fill_in 'Email', with: 'person@gmail.com'
  fill_in 'Password', with: 'test123'
  fill_in 'user_password_confirmation', with: 'test123'
  click_button 'Sign up'
end

def create_post
  click_button 'New Post'
  attach_file("Image", Rails.root + "spec/image.png")
  fill_in 'Caption', with: 'This is so cool'
  click_button 'Create Post'
end

def log_out
  click_link 'Log out'
end
