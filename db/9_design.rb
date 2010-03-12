##########################################################################
# Design
# - Will Paginate

puts "Creating Design Components"

code_path = Rails.root.join("db", "9_design")
step = Step.create :name => "design", 
                   :title => "Design", 
                   :header => "Choose a Design",
                   :order => 9

# Adminzio
step.components.create :title => "Adminizio Lite", 
                       :name => "adminizio",
                       :primary_group => true,
                       :info_url => "http://www.adminizio.com",
                       :code => code_path.join("adminizio.railsgen").read,
                       :description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

# MORE TO COME!