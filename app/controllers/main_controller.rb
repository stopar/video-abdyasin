class MainController < ApplicationController

def index
  @lectures = Lecture.order('recorded_at ASC')
end

def langgan
  @nav = "langgan"
end

end