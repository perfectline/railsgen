##########################################################################
# Deployment
# - Capistrano
# - Heroku
# - Chef
# - EngineYard Cloud

puts "Creating Deployment Components"

code_path = Rails.root.join("db", "5_deploy")
step = Step.create :name => "deploy", 
                   :title => "Deployment", 
                   :order => 5,
                   :header => "Choose a Deployment strategy",
                   :description => "Deploy copy ... Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "

# Capistrano
step.components.create :title => "Capistrano", 
                       :name => "cap",
                       :primary_group => true,
                       :info_url => "http://www.capify.org",
                       :source_url => "http://github.com/capistrano/capistrano",
                       :code => code_path.join("cap.railsgen").read

# Heroku
step.components.create :title => "Heroku", 
                       :name => "heroku",
                       :primary_group => true,
                       :info_url => "http://heroku.com",
                       :code => code_path.join("heroku.railsgen").read


# Chef
step.components.create :title => "Chef", 
                       :name => "chef",
                       :primary_group => true,
                       :info_url => "http://wiki.opscode.com/display/chef/Home",
                       :source_url => "http://github.com/opscode/chef",
                       :code => code_path.join("chef.railsgen").read

# Engineyard Cloud
step.components.create :title => "EngineYard Cloud", 
                       :name => "eycloud",
                       :primary_group => true,
                       :info_url => "http://engineyard.com",
                       :code => code_path.join("eycloud.railsgen").read

