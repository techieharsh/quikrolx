class AdPostsController < ApplicationController
  # GET /ad_posts
  # GET /ad_posts.json
  def index
    @ad_posts = AdPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_posts }
    end
  end

  # GET /ad_posts/1
  # GET /ad_posts/1.json
  def show
    @ad_post = AdPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_post }
    end
  end

  # GET /ad_posts/new
  # GET /ad_posts/new.json
  def new
    @ad_post = AdPost.new
    @ad_post.users.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_post }
    end
  end

  # GET /ad_posts/1/edit
  def edit
    @ad_post = AdPost.find(params[:id])
  end

  # POST /ad_posts
  # POST /ad_posts.json
  def create
    @ad_post = AdPost.new(params[:ad_post])

    respond_to do |format|
      if @ad_post.save
        format.html { redirect_to @ad_post, notice: 'Ad post was successfully created.' }
        format.json { render json: @ad_post, status: :created, location: @ad_post }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_posts/1
  # PUT /ad_posts/1.json
  def update
    @ad_post = AdPost.find(params[:id])

    respond_to do |format|
      if @ad_post.update_attributes(params[:ad_post])
        format.html { redirect_to @ad_post, notice: 'Ad post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_posts/1
  # DELETE /ad_posts/1.json
  def destroy
    @ad_post = AdPost.find(params[:id])
    @ad_post.destroy

    respond_to do |format|
      format.html { redirect_to ad_posts_url }
      format.json { head :no_content }
    end
  end
end
