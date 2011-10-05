# Getting started
Clone the repository into your own folder and update the config/amazon_s3.yml file with your information. (A sample file can be found in config/amazon_s3.yml.sample)

# Deploying (to Heroku)
Change into the directory you cloned Taskrey into. Run
  
    heroku create
    git push heroku master
    heroku rake db:migrate
