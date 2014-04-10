class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true

  has_attached_file :photo, :styles => {:thumb => "150x150>", :medium => "300x300>" },
    :url => "/assets/products/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
