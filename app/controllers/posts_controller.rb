class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # POST /posts
  # POST /posts.json
  def create
    params = post_params
    params[:subtheme_ids] = JSON.parse(params[:subtheme_ids])
    @post = Post.new(params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    params = post_params
    params[:subtheme_ids] = JSON.parse(params[:subtheme_ids])

    if @post.update(params)
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy

    head :no_content
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :image, :subtheme_ids)
    end
end
