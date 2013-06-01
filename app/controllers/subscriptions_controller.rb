class SubscriptionsController < ApplicationController
  respond_to :json
  # GET /subscriptions
  def index
    @subscription = Subscription.all
    render :json => @subscription
  end

  # GET /posts/1
  def show
    @subscription = Subscription.find(params[:id])
    render :json => @subscription
  end

  # POST /posts
  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save
      head :created
    else
      head :bad_request
    end
  end

  # PUT /subscriptions/1
  def update
    @subscription = Subscription.find(params[:id])
    if @subscription.update_attributes(params[:subscription])
      head :no_content
    else
      head :bad_request
    end
  end

  # DELETE /posts/1
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    head :no_content
  end
end
