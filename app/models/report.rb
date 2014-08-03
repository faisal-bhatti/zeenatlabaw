class Report < ActiveRecord::Base
  attr_accessible :rep_id, :file

  mount_uploader :file, FileUploader
end
