class StatusesController < ApplicationController
  respond_to :json

  def index
   @status = Status.all
    render :json => @status
  end

  # GET /posts/1
  def show
    @status = Status.find(params[:id])
    render :json => @status
  end

  # POST /posts
  def create
   @status = Status.new(params[:status])
    if @status.save
      head :created
    else
      head :bad_request
    end
  end

  # PUT /posts/1
  def update
   @status = Status.find(params[:id])
    if @status.update_attributes(params[:status])
      head :no_content
    else
      head :bad_request
    end
  end

  # DELETE /posts/1
  def destroy
   @status = Status.find(params[:id])
    @status.destroy
    head :no_content
  end
end