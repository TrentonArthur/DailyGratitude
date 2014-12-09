class SharesController < ApplicationController
  def index
    @shares = Share.all
  end

  def show
    @share = Share.find(params[:id])
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new
    @share.share_owner = params[:share_owner]
    @share.share_with = params[:share_with]
    @share.entry_id = params[:entry_id]

    if @share.save
      redirect_to root_path, :notice => "Share created successfully."
    else
      render 'new'
    end
  end

  def edit
    @share = Share.find(params[:id])
  end

  def update
    @share = Share.find(params[:id])

    @share.share_owner = params[:share_owner]
    @share.share_with = params[:share_with]
    @share.entry_id = params[:entry_id]

    if @share.save
      redirect_to "/shares", :notice => "Share updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @share = Share.find(params[:id])

    @share.destroy

    redirect_to "/shares", :notice => "Share deleted."
  end
end
