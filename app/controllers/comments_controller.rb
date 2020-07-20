class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: comments
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    private 

    def comment_params
        params.permit(:comment, :user_id, :post_id)
    end

end
