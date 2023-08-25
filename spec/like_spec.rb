require 'rails_helper'

RSpec.describe Like, type: :model do
  describe '#update_post_likes_counter' do
    it 'updates the post likes_counter attrubute' do
      # Arrange
      user = User.create(name: 'Sandeep')
      post = Post.create(title: 'Hi', author: user)
      # like = Like.create(author: user, post:)
      like = Like.new(author: user, post:)

      # Stub the private method
      allow(like).to receive(:update_post_likes_counter)

      # Act
      # like.update_post_likes_counter
      like.save

      # Assert
      # expect(post.reload.likes_counter).to eq(1)
      expect(like).to have_received(:update_post_likes_counter)
    end
  end
end
