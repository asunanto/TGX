class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.search(params[:search])
  end 

  # GET /posts/1
  # GET /posts/1.json
  def show
          session[:post_id] = params[:id]
      @post = Post.find(params[:id])
       @comments = @post.comments.all.order(created_at: :desc)
    
  end

  # GET /posts/new
  def new
    @post = Post.new
     @post.category_id = params[:category_id] || 1
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    # render json: post_params
    @post = Post.new(post_params)
    @post.image.attach(post_params[:image])
    @post.user = current_user
    @post.sold = false
    @post.flagged = false

    respond_to do |format|
      if @post.save && @post.valid?
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:product_name, :price, :user_id, :location, :description, :sold, :flagged, :image, :category_id, :video)
    end

    def check_permissions
      if !@post.can_change?(current_user)
        redirect_to(request.referrer || root_path, :alert => "You are not authorized to perform that action!")
      end
    end
end
