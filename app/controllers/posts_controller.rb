class PostsController < ApplicationController
  respond_to :json
  # GET /posts
  def index
    @post = Post.all
    render :json => @post
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
    render :json => @post
  end

  # POST /posts
  def create
    @post = Post.new(params[:post])
    if @post.save
      head :created
    else
      head :bad_request
    end
  end

  # PUT /posts/1
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      head :no_content
    else
      head :bad_request
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    head :no_content
  end
end
