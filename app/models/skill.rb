class Skill < ActiveRecord::Base
  belongs_to :resume
  attr_accessible :name, :rating, :years
end
