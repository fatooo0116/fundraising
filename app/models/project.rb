class Project < ApplicationRecord
  belongs_to :project_owner
  belongs_to :category

  has_many :project_supports
  has_many :pledges, through: :project_supports


  mount_uploader :cover_image, CoverImageUploader

end
