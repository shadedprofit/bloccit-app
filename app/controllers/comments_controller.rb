class CommentsController < ApplicationController
  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    authorize @comment
  end

  def show
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    authorize @comment
    if @comment.save
      flash[:notice] = "Comment was saved."
      redirect_to [@topic, @post, @comment]
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render :new
    end
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    authorize @comment
    if @comment.update_attributes(comment_params)
      flash[:notice] = "Comment was updated."
      redirect_to [@topic, @post, @pomment]
    else
      flash[:error] = "There was an error saving the comment. Please try again."
      render :edit
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
