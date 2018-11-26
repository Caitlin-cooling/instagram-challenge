require 'rails_helper'

describe 'Database associations' do
  describe 'Posts' do
    it 'belongs to user' do
      association = Post.reflect_on_association(:user)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe 'User' do
    it 'has many posts' do
      association = User.reflect_on_association(:posts)
      expect(association.macro).to eq :has_many
    end
  end
end
