# README

This is the api part of the firebase test

1. rails g scaffold device model:string uuid:string token:text platform:string
2. add gem 'rpush', '~> 4.1', '>= 4.1.1'
bundle
bundle exec rpush init
rake db:migrate
3. in config/initializers/rpush.rb
if (!Rpush::Gcm::App.find_by_name("pushme_droid"))
    app = Rpush::Gcm::App.new
    # let's name this one pushme_droid
    app.name = "pushme_droid"
    # FCM auth key from firebase project
    app.auth_key = " ......"
    app.connections = 1
    # save our app in db
    app.save!
end
4. rails g controller notification
5. config/routes
