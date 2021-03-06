class PostsController < ApplicationController
before_action :find_post, only: [:show, :update, :edit, :destroy]

    #Action index
    def index
        @posts = Post.all.order("created_at DESC") #Get all posts in descending order
    end


    def new
        @post = Post.new # Calls the post model to notify that we want a new Post
    end
    
    def create
        @post = Post.new(post_params)

        #Check if post is saved, if yes then redirect to post
        if @post.save
            redirect_to @post
        else
            render 'new'
        end

    end

    def show
    end

    def update #Actual update
        if @post.update(post_params) #If post is updated, redirect to updated version. Else, edit
            redirect_to @post
        else
            render 'edit'
        end
    end

    def edit
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end

    private
    
    def post_params #Only permit title and content data to the server for posts
        params.require(:post).permit(:title, :content)
    end

    def find_post #Find post ID
        @post = Post.find(params[:id])
    end

end
