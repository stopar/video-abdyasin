class MainController < ApplicationController

def index
  @lectures = Lecture.limit(12).order('recorded_at DESC')
  @title = "Dr. Abdullah Yasin video-video ceramah"
end

def about
  @nav = "about"
  @title = "Tentang laman ini"
end

def donations
  @title = "Cara-cara menyumbang"
end

def moderator
  @title = "Ingin menjadi moderator?"
end

def feedback
  @nav = "feedback"
  @title = "Maklumbalas"
end

end