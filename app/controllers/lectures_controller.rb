class LecturesController < ApplicationController
  
  before_filter :title_for_moderator, :except => :show
  
  def index
    @title = "Dr. Abdullah Yasin - Video Ceramah"
    @lectures = Lecture.all
  end
  
  def new
    @lecture = Lecture.new
  end
  
  def create
    @lecture = Lecture.new(params[:lecture]) 
    
    if @lecture.save
      flash[:success] = "Ceramah telah berjaya dimuat naik"
      redirect_to lectures_path
    else
      render 'new'
    end   
  end
  
  def show
    @lecture = Lecture.where(params[:permalink]).first
    @title = @lecture.title
    @nav = "list"
  end
  
  def edit
    @lecture = Lecture.where(params[:permalink]).first
  end
  
  def update
    @lecture = Lecture.where(params[:permalink]).first
    if @lecture.update_attributes(params[:lecture])
      flash[:sucess] = "Ceramah telah berjaya dikemaskini"
      redirect_to lectures_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @lecture = Lecture.where(params[:permalink]).first
    @lecture.destroy
    flash[:error] = "Ceramah #{@lecture.title} telah dipadam"
    redirect_to lectures_path
  end
  

  
  # Custom methods 
  def title_for_moderator
    @title = "Tambah atau kemaskini ceramah"
    @nav = "list"
  end
  
end
