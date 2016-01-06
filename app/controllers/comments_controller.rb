class CommentsController < ApplicationController
    before_action :authenticate_user!
    
    def index
      @comments = Comment.all
    end

    def show
    end

    def new
      @comment = Comment.new
    end

    def create
      current_user.comments.create(comment_params)
      redirect_to(comments_index_path)
    end

    def edit
      @comment = Comment.find(params[:id])
    end

    def update
      comment = Comment.find(params[:id])
      comment.update(comment_params)
      redirect_to(comments_path)
    end

    def destroy
      comment = Article.find(params[:id])
      comment.destroy
      redirect_to(comments_path)
    end

    private
    def comment_params
      params.require(:comment).permit(:user_id, :article_id, :content)
    end

  end