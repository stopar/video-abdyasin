class Lecture < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :video_name, :presence => true, :uniqueness => true
  
  attr_accessible :title, :video_name, :recorded_at, :note, :poster
  
  mount_uploader :poster, PosterUploader  # Using Carrierwave to mount the uploader  
  
  before_create :set_permalink            # Setting the permalink address - Got it from Railscast
  
  # This sets the URL for each lecture to the title of the lecture
  def to_param
    permalink
  end
  
  
  private
  
  # Takes the title and stores a permalink to it
  def set_permalink
    self.permalink = title.downcase.gsub(/[^0-9a-z]+/,' ').strip.gsub(' ','-') if title
  end
  
end
