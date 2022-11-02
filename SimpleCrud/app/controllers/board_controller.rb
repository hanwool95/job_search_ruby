class BoardController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @posts = Post.find(params[:id])
    end

    def write
        
    end

    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save

        redirect_to '/board'
    end

end
