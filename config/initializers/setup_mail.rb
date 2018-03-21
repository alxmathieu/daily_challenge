ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'app90693290@heroku.com',
  :password             =>  'ighw7ksy3195',
  :domain               =>  'heroku.com',
  :enable_starttls_auto  =>  true
}
