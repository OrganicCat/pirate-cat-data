class Job < ActiveRecord::Base
  belongs_to :resume
  attr_accessible :company, :name, :summary, :years
end
