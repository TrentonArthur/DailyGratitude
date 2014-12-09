class EntriesController < ApplicationController
  def index

    # if 2<3
    #   System.out("Test")

    # end
    # if current_user == nil
    #   render "/users/sign_in"


      if current_user.present?
        @entries = current_user.entries.order("created_at DESC")
        @entries.order("text DESC")


        @shareentries = current_user.share_view.order("created_at DESC")

      else
        @entries = Entry.order("created_at DESC")

       end
  #  end


    # else
    #   {
    #     @entries=Entry.findby(:id => current_user.id)
    #  }
    #@entries = current_user.entries

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
    @entry.owner_id = current_user.id
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
