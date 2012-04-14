class ModeratorsController < ApplicationController
  before_filter :authorize
  before_filter :moderator_info
  
  def new
    @moderator = Moderator.new
  end
  
  def create
    @moderator = Moderator.new(params[:moderator])
    if @moderator.save
      flash[:success] = "Moderator telah ditambah"
      redirect_to root_url, 
    else
      render "new"
    end
  end
  
  def edit
    @moderators = Moderator.all
    @moderator  = Moderator.find(session[:moderator_id])
  end
  
  def update
    @moderator  = Moderator.find(session[:moderator_id])
    if @moderator.update_attributes(params[:moderator])
      flash[:success] = "Profil anda telah ditukar"
      redirect_to lectures_path
    else
      render 'edit'
    end
  end
  
  def moderator_info
    @title = "Laman moderator"
    @nav = "moderator_daftar"
    
  end
  
end
