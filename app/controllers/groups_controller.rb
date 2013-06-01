class GroupsController < ApplicationController
  respond_to :json
  # GET /groups
  def index
    @group = Group.all
    render :json => @group
  end

  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    render :json => @group
  end


  # POST /groups
  def create
    @group = Group.new(params[:group])
    if @group.save
      head :created
    else
      head :bad_request
    end
  end

  # PUT /groups/1
  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(params[:group])
      head :no_content
    else
      head :bad_request
    end
  end

  # DELETE /groups/1
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    head :no_content
  end
end
