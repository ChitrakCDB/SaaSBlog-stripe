class CommentsController < ApplicationController
  def create
      @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:comment_text, :user_id, :post_id))
      redirect_to post_path(@post)    
  end

  def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post)
  end
end
