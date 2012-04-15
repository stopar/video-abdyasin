class AddDefaultModerator < ActiveRecord::Migration

  # Create default user
  Moderator.create!(:email => 'mus@home.com', :password => 'password', 
                    :password_confirmation => 'password')
end
