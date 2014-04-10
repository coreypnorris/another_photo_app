class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  has_attached_file :photo
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
