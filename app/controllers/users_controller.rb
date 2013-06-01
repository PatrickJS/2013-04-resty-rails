class UsersController < ApplicationController
  respond_to :json
  def index
    @user = User.all
    render :json => @user
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render :json => @user
  end

  # POST /users
  def create
    @user = User.new(params[:user])
    if @user.save
      head :created
    else
      head :bad_request
    end
  end

  # PUT /posts/1
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      head :no_content
    else
      head :bad_request
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    head :no_content
  end
end
