class MainController < ApplicationController

def index
  @lectures = Lecture.order('recorded_at ASC')
  @title = "Dr. Abdullah Yasin video-video ceramah"
end

def about
  @nav = "about"
  @title = "Tentang laman ini"
end

def donations
  @title = "Cara-cara menyumbang"
end

def feedback
  @nav = "feedback"
  @title = "Maklumbalas"
end

end