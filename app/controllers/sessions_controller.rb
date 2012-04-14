class SessionsController < ApplicationController
  def new
    @title = "Masuk untuk moderator"
    @nav = "moderator_masuk"
  end
  
  def create
    moderator = Moderator.find_by_email(params[:email])
    if moderator && moderator.authenticate(params[:password])
      session[:moderator_id] = moderator.id
      flash[:success] = "Assalamualaikum dan selamat kembali #{moderator.email}"
      redirect_to lectures_path
    else
      flash[:error] = "Emel atau kata laluan anda salah. Sila masukan semula."
      render "new"
    end
  end
  
  def destroy
    session[:moderator_id] = nil
    redirect_to root_url
  end
  
end
