# Pengenalan

Assalamualaikum semua, berikut adalah source code untuk laman http://video.abdyasin.com. Sesiapa sahaja boleh fork code ini dan mengubahnya dan kemudian gunakannya untuk tujuan peribadi anda. 

Harapan saya anda munggunakan source code ini untuk penyampaian video-video ustaz/ustazah anda sendiri. Saya juga berminat untuk mendengar ceramah-ceramah ustaz lain dan saya pasti terdapat banyak lagi yang ada di dunia ini, sebarkanlah kerana segala amalan baik anda akan lakukan akan dibalas oleh Allah di akhirat kelak

# Technical stuff
##How this video website is maintain

1. Video uploads are done separately and in the moderato's page. You can choose your own provider; Amazon S3 or Rackspace Cloudfiles. 

2. Once you've selected a cloud storage do not forget to change the video source address for the location of the videos. See app/views/show.html.erb

3. You can use the same cloud storage to store the poster and thumbnails for the videos. Set your own keys for the cloud storage at: config/initializers/carrierwave.rb 

## Setup

1. This site was desined to run on Ruby 1.9.2 or higher and used Rails 3.2. 

2. You might want to install the imagemagick gem separately coz sometimes its easier that way to troubleshoot especially if your using a Windows machine.

3. If everything is okay after `bundle install` then simply run `rails s` to run the app

**All the best!**

# Legal

You are free to use any part of the app into your own app. I built mine base of Ryan Bates's [Railscast](https://github.com/ryanb/railscasts) and this is a very strip down version of his site. Hope you find what you are looking 