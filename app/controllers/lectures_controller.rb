class LecturesController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  before_filter :title_for_moderator, :except => :show
  
  def index
    @title = "Dr. Abdullah Yasin - Video Ceramah"
    @lectures = Lecture.order('recorded_at ASC')
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
    @lecture = Lecture.find_by_permalink(params[:id])
    @title = @lecture.title
    @nav = "list"
  end
  
  def edit
    @lecture = Lecture.find_by_permalink(params[:id])
  end
  
  def update
    @lecture = Lecture.find_by_permalink(params[:id])
    if @lecture.update_attributes(params[:lecture])
      flash[:success] = "Ceramah telah berjaya dikemaskini"
      redirect_to lectures_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @lecture = Lecture.find_by_permalink(params[:id])
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
