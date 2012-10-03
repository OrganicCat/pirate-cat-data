class Resume < ActiveRecord::Base
  attr_accessible :first_name, :header_content, :last_name, :main_content, :summary_content, :title
  
  has_many :skills
  has_many :jobs
end
