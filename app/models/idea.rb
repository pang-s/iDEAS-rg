class Idea < ActiveRecord::Base
  has_many :comments
  mount_uploader :picture, PictureUploader
  def has_comments?
    comments.present?
  end
end
