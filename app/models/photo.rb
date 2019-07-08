class Photo < ApplicationRecord

  belongs_to :place

  mount_uploaders :pictures, PictureUploader

end
