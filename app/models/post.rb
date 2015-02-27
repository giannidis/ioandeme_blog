class Post < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "700x300#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :body, presence: true
end
