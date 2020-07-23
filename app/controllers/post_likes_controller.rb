class PostLikesController < ApplicationController

    def create
        @postLikes = PostLike.create(postLike_params)
        render json: @postLikes
    end

    def destroy
        @deletePostLike = PostLike.find(params[:id])
        @deletePostLike.destroy 
        render json: @deletePostLike
    end

    private 

    def postLike_params
        params.permit(:user_id, :post_id)
    end

end
