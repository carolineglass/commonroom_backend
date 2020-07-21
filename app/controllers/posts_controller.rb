class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts
    end

    def create
        @post = Post.create(post_params)
        render json: @post
    end

    def destroy
        @deletePost = Post.find(params[:id])
        @deletePost.destroy 
        render json: @deletePost
    end

    private 

    def post_params
        params.permit(:user_id, :country_id, :title, :post, :category, :img)
    end

end
