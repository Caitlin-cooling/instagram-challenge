# frozen_string_literal: true

class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :user, foreign_key: 'user_id'
end
