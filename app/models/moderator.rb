class Moderator < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation
  
  email_check = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i      
  validates :email, :presence => true, :uniqueness => true, 
                    :format => { :with => email_check }
                    
  validates_presence_of :password, :on => :create, :message => "Masukan kata laluan"
  validates_presence_of :password_confirmation, :on => :create, 
                        :message => "Masukan kata laluan sekali lagi" 
end
