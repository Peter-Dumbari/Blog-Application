class LikesController < ApplicationController
  def create
    @current = current_user
    @post = Post.find(params[:post_id])
    @like = @post.likes.build(author_id: @current.id)

    respond_to do |format|
      format.html do
        if @like.save
          redirect_to user_post_path(current_user, @post), notice: 'Post liked'
        else
          redirect_to user_post_path(current_user, @post), alert: 'Cannot like'
        end
      end
    end
  end
end
