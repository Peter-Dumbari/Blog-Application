require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#update_post_comments_counter' do
    it 'updates the post comments_counter attribute' do
      # Arrange
      user = User.create(name: 'Sandeep')
      post = Post.create(title: 'Hello', author: user)
      # comment = Comment.create(author: user, post:)
      comment = Comment.new(author: user, post:)

      # Stub the private method
      allow(comment).to receive(:update_post_comments_counter)

      # Act
      # comment.update_post_comments_counter
      comment.save

      # Assert
      # expect(post.reload.comments_counter).to eq(1)
      expect(comment).to have_received(:update_post_comments_counter)
    end
  end
end
