class PostsController < ApplicationController
    before_action :find_blogger, only: [:show, :edit, :update, :destroy]

    def index
    @posts = Post.all
    end

    def show

    end

    def new
        @post=Post.new
    end

    def create
        @post.update(post_params)
        redirect_to post_params(@post)
    end

    def edit
    end

    def update
        @post.update(post_params)
        redirect_to post_params(@post)
    end

    def destroy
        @post.destroy
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end



end
