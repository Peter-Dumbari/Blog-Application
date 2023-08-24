class Comment < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  # Attributes
  attribute :text, :text

  # Callback
  after_save :update_post_comments_counter

  private

  # Methods
  def update_post_comments_counter
    post.update(comments_counter: post.comments.count + 1)
  end
end
