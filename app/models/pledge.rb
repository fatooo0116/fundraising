class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :project_support  
end
