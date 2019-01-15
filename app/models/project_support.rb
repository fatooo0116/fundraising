class ProjectSupport < ApplicationRecord
  belongs_to :project
  has_many :pledges
    
end
