class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.text = params[:text]
    @entry.owner_id = params[:owner_id]
    @entry.image = params[:image]

    if @entry.save
      redirect_to "/entries", :notice => "Entry created successfully."
    else
      render 'new'
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    @entry.text = params[:text]
    @entry.owner_id = params[:owner_id]
    @entry.image = params[:image]

    if @entry.save
      redirect_to "/entries", :notice => "Entry updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])

    @entry.destroy

    redirect_to "/entries", :notice => "Entry deleted."
  end
end
